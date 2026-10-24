# Tape.write_move_right_n

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:811f7b76-9581-0b1c-2000-090ca164ba1f",
  "kind": "theorem",
  "lexical_name": "Tape.write_move_right_n",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "tape-write-move-right-n--8db104cbb6ebcd61f00631b3",
  "source": {
    "blob": "3e303b73e744f4202343c1b6e3bb38d56d17c346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 598,
    "line": 590,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant98dbaa5575ea0a954e3b9dcb155f6dfdd88ad642dcfceb391827f18294059ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8db104cbb6ebcd61f00631b30b4c22f5a13ac6e8d6c610978c74f76320bb88e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant98dbaa5575ea0a954e3b9dcb155f6dfdd88ad642dcfceb391827f18294059ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:811f7b76-9581-0b1c-2000-090ca164ba1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–598.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tape.write_move_right_n {Γ} [Inhabited Γ] (f : Γ → Γ) (L R : ListBlank Γ) (n : ℕ) :
    ((Tape.move Dir.right)^[n] (Tape.mk' L R)).write (f (R.nth n)) =
      (Tape.move Dir.right)^[n] (Tape.mk' L (R.modifyNth f n)) := by
  induction' n with n IH generalizing L R
  · simp only [ListBlank.nth_zero, ListBlank.modifyNth, iterate_zero_apply]
    rw [← Tape.write_mk', ListBlank.cons_head_tail]
  simp only [ListBlank.head_cons, ListBlank.nth_succ, ListBlank.modifyNth, Tape.move_right_mk',
    ListBlank.tail_cons, iterate_succ_apply, IH]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant98dbaa5575ea0a954e3b9dcb155f6dfdd88ad642dcfceb391827f18294059ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant98dbaa5575ea0a954e3b9dcb155f6dfdd88ad642dcfceb391827f18294059ce6.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e303b73e744f4202343c1b6e3bb38d56d17c346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
