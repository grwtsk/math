# XYIdeal_eq₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb772903-0be3-acbc-d6df-1033cbcc6885",
  "kind": "lemma",
  "lexical_name": "XYIdeal_eq₁",
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
  "slug": "xyideal-eq--5112b2e8c024d3537ce8a89c",
  "source": {
    "blob": "cf272ceb489303c0678628e8176ba9c2f5174357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 286,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5112b2e8c024d3537ce8a89ce37e7b450d1e68294efc04488c519f3569742747",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb772903-0be3-acbc-d6df-1033cbcc6885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma XYIdeal_eq₁ (x y ℓ : R) : XYIdeal W' x (C y) = XYIdeal W' x (linePolynomial x y ℓ) := by
  simp only [XYIdeal, XClass, YClass, linePolynomial]
  rw [← span_pair_add_left_mul _ _ <| mk W' <| C <| C <| -ℓ, ← map_mul, ← map_add]
  congr 4
  C_simp
  ring1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf272ceb489303c0678628e8176ba9c2f5174357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
