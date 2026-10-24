# OrientationEquivarianceHypotheses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:988eefda2886b8e58d2aec0ba7868591a4077961bd944455ba1fec8b6a3a4bf4",
  "kind": "structure",
  "lexical_name": "OrientationEquivarianceHypotheses",
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
  "slug": "orientationequivariancehypotheses--93dc1d2b1de7c435fac0192e",
  "source": {
    "blob": "15fb149f295c65d79270fa6727ef0d3a4aae3ee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 100,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FiniteShadowLimit/Variant2467fd99bbaf0f5788e287ed5072e10a959a71f2a31b5ca9089b42e87e589475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93dc1d2b1de7c435fac0192e89b6bb46df84ec4da388522bf281da11d8976d2a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FiniteShadowLimit/Variant2467fd99bbaf0f5788e287ed5072e10a959a71f2a31b5ca9089b42e87e589475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:988eefda2886b8e58d2aec0ba7868591a4077961bd944455ba1fec8b6a3a4bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrientationEquivarianceHypotheses where
  groupActionHash : Nat
  matrixActionHash : Nat
  hilbertActionHash : Nat
  relaxationEquivariant : Prop
  relaxationProof : relaxationEquivariant
  energyInvariant : Prop
  energyProof : energyInvariant
  torsionVectorFieldEquivariant : Prop
  torsionProof : torsionVectorFieldEquivariant
  semigroupConjugates : Prop
  semigroupProof : semigroupConjugates
  limitEquivariant : Prop
  limitProof : limitEquivariant

/-- Boundary-closure hypotheses for relaxed analytic meshes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FiniteShadowLimit/Variant2467fd99bbaf0f5788e287ed5072e10a959a71f2a31b5ca9089b42e87e589475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FiniteShadowLimit/Variant2467fd99bbaf0f5788e287ed5072e10a959a71f2a31b5ca9089b42e87e589475.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15fb149f295c65d79270fa6727ef0d3a4aae3ee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
