# _root_.GRWTSK.Algebra.LinearAlgebra.HasOrthogonalProjection.Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.LinearMap.isSymmetricProjection_iff_eq_coe_starProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0af51560-d232-b7e7-f929-4bca85aeb390",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.HasOrthogonalProjection.Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.LinearMap.isSymmetricProjection_iff_eq_coe_starProjection",
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
  "slug": "root-grwtsk-algebra-linearalgebra-hasorthogonalprojection-variant6e0b7c1--416530616e1307a9ea68529f",
  "source": {
    "blob": "0ef7a90eec68277169d82e36b073488027b2dabc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 649,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:416530616e1307a9ea68529fb58566f4ea6b7958b03cc92a62de29c4be5037fb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0af51560-d232-b7e7-f929-4bca85aeb390`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.LinearAlgebra.HasOrthogonalProjection.Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.LinearMap.isSymmetricProjection_iff_eq_coe_starProjection {p : E →ₗ[𝕜] E} :
    p.IsSymmetricProjection
      ↔ ∃ (K : Submodule 𝕜 E) (_ : K.HasOrthogonalProjection), p = K.starProjection :=
  ⟨fun h ↦ ⟨LinearMap.range p, p.isSymmetricProjection_iff_eq_coe_starProjection_range.mp h⟩,
    by rintro ⟨_, _, rfl⟩; exact isSymmetricProjection_starProjection _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef7a90eec68277169d82e36b073488027b2dabc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
