# completedCosZeta_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c7c2a8f-a8cd-5685-d89b-7d537f842e05",
  "kind": "lemma",
  "lexical_name": "completedCosZeta_eq",
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
  "slug": "completedcoszeta-eq--99f50c7734ecc005e0c58788",
  "source": {
    "blob": "06774e745ac8065bf0604ed287c6d5f13a3acc3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 334,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant59c99cc116d16c7ca8e8a78dbe0bbbe6614099ae409586f07322e2ec3fb68593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99f50c7734ecc005e0c587883e6842b4ea770ccaf6e35ad5347dfb71e7075ef1",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant59c99cc116d16c7ca8e8a78dbe0bbbe6614099ae409586f07322e2ec3fb68593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c7c2a8f-a8cd-5685-d89b-7d537f842e05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completedCosZeta_eq (a : UnitAddCircle) (s : ℂ) :
    completedCosZeta a s =
    completedCosZeta₀ a s - 1 / s - (if a = 0 then 1 else 0) / (1 - s) := by
  rw [completedCosZeta, WeakFEPair.Λ, sub_div, sub_div]
  congr 1
  · rw [completedCosZeta₀, WeakFEPair.symm, hurwitzEvenFEPair, smul_eq_mul, mul_one, div_div,
      div_mul_cancel₀ _ (two_ne_zero' ℂ)]
  · simp_rw [WeakFEPair.symm, hurwitzEvenFEPair, push_cast, inv_one, smul_eq_mul,
      mul_comm _ (if _ then _ else _), mul_div_assoc, div_div, ← sub_div,
      div_mul_cancel₀ _ (two_ne_zero' ℂ), mul_one_div]

/-!
## Parity and functional equations
-/

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant59c99cc116d16c7ca8e8a78dbe0bbbe6614099ae409586f07322e2ec3fb68593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant59c99cc116d16c7ca8e8a78dbe0bbbe6614099ae409586f07322e2ec3fb68593.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06774e745ac8065bf0604ed287c6d5f13a3acc3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
