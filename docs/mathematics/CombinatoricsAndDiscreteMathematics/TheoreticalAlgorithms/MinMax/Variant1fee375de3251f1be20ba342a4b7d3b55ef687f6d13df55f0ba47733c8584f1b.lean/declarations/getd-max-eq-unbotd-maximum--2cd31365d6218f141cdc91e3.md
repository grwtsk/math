# getD_max?_eq_unbotD_maximum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56c02ac8-b1e7-c14d-ec28-22f9dafaed03",
  "kind": "lemma",
  "lexical_name": "getD_max?_eq_unbotD_maximum",
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
  "slug": "getd-max-eq-unbotd-maximum--2cd31365d6218f141cdc91e3",
  "source": {
    "blob": "3ac67c25a2583069b5aff7fdab671c9385a730de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 459,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cd31365d6218f141cdc91e3d479233123d1a2d4dd7c3e0f6b899fab088ab14c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56c02ac8-b1e7-c14d-ec28-22f9dafaed03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma getD_max?_eq_unbotD_maximum (l : List α) (d : α) : l.max?.getD d = l.maximum.unbotD d := by
  cases hy : l.maximum with
  | bot => simp [List.maximum_eq_bot.mp hy]
  | coe y =>
    rw [List.maximum_eq_coe_iff] at hy
    simp only [WithBot.unbotD_coe]
    cases hz : l.max? with
    | none => simp [List.max?_eq_none_iff.mp hz] at hy
    | some z =>
      have : Std.Antisymm (α := α) (· ≤ ·) := ⟨fun _ _ => _root_.le_antisymm⟩
      rw [List.max?_eq_some_iff] at hz
      · rw [Option.getD_some]
        exact _root_.le_antisymm (hy.right _ hz.left) (hz.right _ hy.left)
      all_goals simp [le_total]

@[deprecated (since := "2025-02-06")]
alias getD_max?_eq_unbot'_maximum := getD_max?_eq_unbotD_maximum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variant1fee375de3251f1be20ba342a4b7d3b55ef687f6d13df55f0ba47733c8584f1b.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ac67c25a2583069b5aff7fdab671c9385a730de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
