# Scheme.zeroLocus_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b278c04b-4565-e860-f5b9-f35eb9e2aaf1",
  "kind": "lemma",
  "lexical_name": "Scheme.zeroLocus_inf",
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
  "slug": "scheme-zerolocus-inf--99e1e5a377fb81d9e1d81b28",
  "source": {
    "blob": "51a709e1c18ebb4991a8176c4e71043c9b3d457e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1061,
    "line": 1049,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99e1e5a377fb81d9e1d81b28fdee048b425cab52fdd2259901f509596e05a320",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b278c04b-4565-e860-f5b9-f35eb9e2aaf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1049–1061.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.zeroLocus_inf (X : Scheme.{u}) {U : X.Opens} (I J : Ideal Γ(X, U)) :
    X.zeroLocus (U := U) ↑(I ⊓ J) = X.zeroLocus (U := U) I ∪ X.zeroLocus (U := U) J := by
  suffices U.1 ↓∩ (X.zeroLocus (U := U) ↑(I ⊓ J)) =
      U.1 ↓∩ (X.zeroLocus (U := U) I ∪ X.zeroLocus (U := U) J) by
    ext x
    by_cases hxU : x ∈ U
    · simpa [hxU] using congr(⟨x, hxU⟩ ∈ $this)
    · simp only [Submodule.inf_coe, Set.mem_union,
        codisjoint_iff_compl_le_left.mp (X.codisjoint_zeroLocus (U := U) (I ∩ J)) hxU,
        codisjoint_iff_compl_le_left.mp (X.codisjoint_zeroLocus (U := U) I) hxU, true_or]
  simp only [← U.toSpecΓ_preimage_zeroLocus, PrimeSpectrum.zeroLocus_inf I J,
    Set.preimage_union]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineScheme/Variant65dae3a378d737df437e945891d987920e19f7119c90dfeea1f3d1ec763535dc.lean#L1049).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51a709e1c18ebb4991a8176c4e71043c9b3d457e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
