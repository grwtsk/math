# factors_normalizedMooreComplex_PInfty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5c41df0-e78d-f5c2-89ab-ddbade8e48ae",
  "kind": "theorem",
  "lexical_name": "factors_normalizedMooreComplex_PInfty",
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
  "slug": "factors-normalizedmoorecomplex-pinfty--cb3319882c80e2882961e93c",
  "source": {
    "blob": "ce806915bd1f94d4607d2d31a38e563507c0f784",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant08508731340d36ca24a1a72ceba2ee3db0e06b2bf1e48f819b3f1fe7c1eb4243.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb3319882c80e2882961e93cf88485fb0a43f6345033cc4a3c42204dfb04c151",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant08508731340d36ca24a1a72ceba2ee3db0e06b2bf1e48f819b3f1fe7c1eb4243.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5c41df0-e78d-f5c2-89ab-ddbade8e48ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factors_normalizedMooreComplex_PInfty (n : ℕ) :
    Subobject.Factors (NormalizedMooreComplex.objX X n) (PInfty.f n) := by
  rcases n with _|n
  · apply top_factors
  · rw [PInfty_f, NormalizedMooreComplex.objX, finset_inf_factors]
    intro i _
    apply kernelSubobject_factors
    exact (HigherFacesVanish.of_P (n + 1) n) i le_add_self
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.factors_normalized_Moore_complex_P_infty AlgebraicTopology.DoldKan.factors_normalizedMooreComplex_PInfty

/-- `PInfty` factors through the normalized Moore complex -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant08508731340d36ca24a1a72ceba2ee3db0e06b2bf1e48f819b3f1fe7c1eb4243.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normalized/Variant08508731340d36ca24a1a72ceba2ee3db0e06b2bf1e48f819b3f1fe7c1eb4243.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce806915bd1f94d4607d2d31a38e563507c0f784` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
