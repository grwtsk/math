# d₂₁_single_inv_self_ρ_sub_self_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2c0524b-56cd-3923-b3a4-199d685e71f9",
  "kind": "lemma",
  "lexical_name": "d₂₁_single_inv_self_ρ_sub_self_inv",
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
  "slug": "d-single-inv-self-sub-self-inv--cf19a47120cc6d19e5297c6e",
  "source": {
    "blob": "8dd456866147588b348a0b16b5ea928e6ab81586",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf19a47120cc6d19e5297c6ec28643f3e3deb42ab8f7be162a923a39ba4b3849",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2c0524b-56cd-3923-b3a4-199d685e71f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma d₂₁_single_inv_self_ρ_sub_self_inv (g : G) (a : A) :
    d₂₁ A (single (g⁻¹, g) (A.ρ g⁻¹ a) - single (g, g⁻¹) a) =
      single 1 a - single 1 (A.ρ g⁻¹ a) := by
  simp only [map_sub, d₂₁_single (G := G), inv_inv, self_inv_apply, inv_mul_cancel,
    mul_inv_cancel]
  abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantbe58d95f4e586e3d8c6b0a11d2f01ab6e1545335820a96914223c76823da8e82.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd456866147588b348a0b16b5ea928e6ab81586` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
