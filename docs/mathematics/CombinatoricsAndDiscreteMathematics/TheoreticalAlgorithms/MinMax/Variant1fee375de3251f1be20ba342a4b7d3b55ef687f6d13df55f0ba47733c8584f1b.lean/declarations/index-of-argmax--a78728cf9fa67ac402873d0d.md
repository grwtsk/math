# index_of_argmax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d97212c4-a430-b2a3-698e-8a5550710011",
  "kind": "theorem",
  "lexical_name": "index_of_argmax",
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
  "slug": "index-of-argmax--a78728cf9fa67ac402873d0d",
  "source": {
    "blob": "3ac67c25a2583069b5aff7fdab671c9385a730de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 196,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a78728cf9fa67ac402873d0d90546991791fd76a1d3b8ad71c08f0ccde801a42",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d97212c4-a430-b2a3-698e-8a5550710011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem index_of_argmax :
    ∀ {l : List α} {m : α}, m ∈ argmax f l → ∀ {a}, a ∈ l → f m ≤ f a → l.idxOf m ≤ l.idxOf a
  | [], m, _, _, _, _ => by simp
  | hd :: tl, m, hm, a, ha, ham => by
    simp only [idxOf_cons, argmax_cons, Option.mem_def] at hm ⊢
    cases h : argmax f tl
    · rw [h] at hm
      simp_all
    rw [h] at hm
    dsimp only at hm
    simp only [cond_eq_if, beq_iff_eq]
    obtain ha | ha := ha <;> split_ifs at hm <;> injection hm with hm <;> subst hm
    · cases not_le_of_lt ‹_› ‹_›
    · rw [if_pos rfl]
    · rw [if_neg, if_neg]
      · exact Nat.succ_le_succ (index_of_argmax h (by assumption) ham)
      · exact ne_of_apply_ne f (lt_of_lt_of_le ‹_› ‹_›).ne
      · exact ne_of_apply_ne _ ‹f hd < f _›.ne
    · rw [if_pos rfl]
      exact Nat.zero_le _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ac67c25a2583069b5aff7fdab671c9385a730de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
