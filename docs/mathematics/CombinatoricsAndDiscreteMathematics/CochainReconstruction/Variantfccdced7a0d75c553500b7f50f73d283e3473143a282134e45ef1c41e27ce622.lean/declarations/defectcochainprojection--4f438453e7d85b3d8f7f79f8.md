# DefectCochainProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:200ea15f16830d1fce18430b0b5fb0328fde9a8aa4c008ea1fb40ce1f28e9b89",
  "kind": "structure",
  "lexical_name": "DefectCochainProjection",
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
  "slug": "defectcochainprojection--4f438453e7d85b3d8f7f79f8",
  "source": {
    "blob": "f8e9d45ce1cce3d09a467342bda88b3af88731a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f438453e7d85b3d8f7f79f86ac13d929e71fa66de9770b2d04f2beddf89f679",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:200ea15f16830d1fce18430b0b5fb0328fde9a8aa4c008ea1fb40ce1f28e9b89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DefectCochainProjection
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (measured :
      MeasuredDefectCochain model Prime) where
  potential : Finset Prime → model.Operator
  baseValue : model.Operator
  baseFixed : potential ∅ = baseValue
  projectedIncrement :
    Finset Prime → Prime → model.Operator
  projected_exact :
    ∀ cut prime,
      projectedIncrement cut prime =
        potential (insert prime cut) -
          potential cut
  closednessResidual :
    Finset Prime → Prime → Prime →
      model.Operator
  measurementResidual :
    Finset Prime → Prime → model.Operator
  residual_split :
    ∀ cut prime,
      measured.increment cut prime =
        projectedIncrement cut prime +
          measurementResidual cut prime
  digest : ReconstructionDigest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CochainReconstruction/Variantfccdced7a0d75c553500b7f50f73d283e3473143a282134e45ef1c41e27ce622.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8e9d45ce1cce3d09a467342bda88b3af88731a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
