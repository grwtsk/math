# quotientForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce0c8c7bd7c08ab731071d668015bc5356d19a4914af8ddf142fa993c298a0c3",
  "kind": "def",
  "lexical_name": "quotientForm",
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
  "slug": "quotientform--717436fb5677c17f9e7ec65e",
  "source": {
    "blob": "b07157ef276b598f2706b39a3cede03555927b3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 153,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:717436fb5677c17f9e7ec65edf77fd75a7894d4add3ba04938319c0eb1d6c9c8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce0c8c7bd7c08ab731071d668015bc5356d19a4914af8ddf142fa993c298a0c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientForm (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 ≤ weight i) : PositiveForm (NullQuotient feature) :=
  featureForm (quotientFeature feature) weight hw

/-- The quotient pairing agrees with the original Gram pairing on representatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b07157ef276b598f2706b39a3cede03555927b3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
