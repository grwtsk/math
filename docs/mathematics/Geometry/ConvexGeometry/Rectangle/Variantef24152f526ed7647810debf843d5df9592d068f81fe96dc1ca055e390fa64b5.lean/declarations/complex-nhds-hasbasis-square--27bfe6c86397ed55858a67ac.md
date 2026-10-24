# Complex.nhds_hasBasis_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aec067bc-b6bf-9d28-ed40-8995e7c07edd",
  "kind": "theorem",
  "lexical_name": "Complex.nhds_hasBasis_square",
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
  "slug": "complex-nhds-hasbasis-square--27bfe6c86397ed55858a67ac",
  "source": {
    "blob": "d971531011e9bebf102f5920b76d60d72bdd4f96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 260,
    "path": "GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27bfe6c86397ed55858a67acebd09ffbd66c59aaeda87a0002b46b9ecc0e17ea",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aec067bc-b6bf-9d28-ed40-8995e7c07edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.nhds_hasBasis_square (p : ℂ) : (𝓝 p).HasBasis (0 < ·) (Square p ·) := by
  suffices
      (𝓝 p.re ×ˢ 𝓝 p.im).HasBasis (0 < ·)
        (equivRealProdCLM.symm.toHomeomorph ⁻¹' Square p ·)
    by simpa only [← nhds_prod_eq, Homeomorph.map_nhds_eq, Homeomorph.image_preimage]
      using! this.map equivRealProdCLM.symm.toHomeomorph
  apply ((nhds_basis_Icc_pos p.re).prod_same_index_mono (nhds_basis_Icc_pos p.im) ?_ ?_).congr
  · intro; rfl
  · intros
    rw [← uIcc_of_lt (by linarith), ← uIcc_of_lt (by linarith)]
    simpa [Square, Rectangle] using by ring_nf
  all_goals exact (antitone_const_tsub.Icc (monotone_id.const_add _)).monotoneOn _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Rectangle/Variantef24152f526ed7647810debf843d5df9592d068f81fe96dc1ca055e390fa64b5.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d971531011e9bebf102f5920b76d60d72bdd4f96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
