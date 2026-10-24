# IsPowMul.map_one_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a738aee4-c80b-2404-a3e6-bbbf3e03ee94",
  "kind": "lemma",
  "lexical_name": "IsPowMul.map_one_le_one",
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
  "slug": "ispowmul-map-one-le-one--e04cd263d9d809fa93c79dcf",
  "source": {
    "blob": "c0a4bf5365127049ed45530638a3e659eb673575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 574,
    "path": "GRWTSK/Algebra/Basic/Variant05ccdde43207d4f6942f848604df20d4ff876994efc1643f5b21c8b563b96ad4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e04cd263d9d809fa93c79dcfea8897f65ddab722aa0a64661a8b6f77d2939bdf",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant05ccdde43207d4f6942f848604df20d4ff876994efc1643f5b21c8b563b96ad4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a738aee4-c80b-2404-a3e6-bbbf3e03ee94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPowMul.map_one_le_one {R : Type*} [Monoid R] {f : R → ℝ} (hf : IsPowMul f) :
    f 1 ≤ 1 := by
  have hf1 : (f 1) ^ 2 = f 1 := by conv_rhs => rw [← one_pow 2, hf _ one_le_two]
  rcases eq_zero_or_one_of_sq_eq_self hf1 with h | h <;> rw [h]
  exact zero_le_one

/-- A ring homomorphism `f : α →+* β` is bounded with respect to the functions `nα : α → ℝ` and
  `nβ : β → ℝ` if there exists a positive constant `C` such that for all `x` in `α`,
  `nβ (f x) ≤ C * nα x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant05ccdde43207d4f6942f848604df20d4ff876994efc1643f5b21c8b563b96ad4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant05ccdde43207d4f6942f848604df20d4ff876994efc1643f5b21c8b563b96ad4.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0a4bf5365127049ed45530638a3e659eb673575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
