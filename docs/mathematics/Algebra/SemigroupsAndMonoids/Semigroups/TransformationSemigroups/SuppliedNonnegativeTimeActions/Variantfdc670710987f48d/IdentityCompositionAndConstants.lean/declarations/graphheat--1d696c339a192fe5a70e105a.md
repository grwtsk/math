# GraphHeat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6df5bd3c7be194058bc5c45fbb06539a0e19718fec6f11c9d42915a84dc1a863",
  "kind": "structure",
  "lexical_name": "GraphHeat",
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
  "slug": "graphheat--1d696c339a192fe5a70e105a",
  "source": {
    "blob": "babe56a9b6a22452d0de43835059b919be9b9205",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 41,
    "path": "GRWTSK/Algebra/SemigroupsAndMonoids/Semigroups/TransformationSemigroups/SuppliedNonnegativeTimeActions/Variantfdc670710987f48d/IdentityCompositionAndConstants.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d696c339a192fe5a70e105aace528ff9fb4919959cdbf8eb422de299eb48835",
  "verification": {
    "reference": "docs/verification/Algebra/SemigroupsAndMonoids/Semigroups/TransformationSemigroups/SuppliedNonnegativeTimeActions/Variantfdc670710987f48d/IdentityCompositionAndConstants.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6df5bd3c7be194058bc5c45fbb06539a0e19718fec6f11c9d42915a84dc1a863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GraphHeat (s : GridShape) (k : Nat) where
  heat : NNReal → SpectralTensor s k → SpectralTensor s k
  heat_zero : ∀ X, heat 0 X = X
  heat_add : ∀ t u X, heat (t + u) X = heat t (heat u X)
  preserves_constant :
    ∀ t a, heat t (SpectralTensor.constant s a) =
      SpectralTensor.constant s a

end GRWTSK.Algebra.SemigroupsAndMonoids.Semigroups.TransformationSemigroups.SuppliedNonnegativeTimeActions.Variantfdc670710987f48d
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/Algebra/SemigroupsAndMonoids/Semigroups/TransformationSemigroups/SuppliedNonnegativeTimeActions/Variantfdc670710987f48d/IdentityCompositionAndConstants.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SemigroupsAndMonoids/Semigroups/TransformationSemigroups/SuppliedNonnegativeTimeActions/Variantfdc670710987f48d/IdentityCompositionAndConstants.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `babe56a9b6a22452d0de43835059b919be9b9205` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
