# global_generator_operator_signature_lands_in_local_analyticSubspaces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a180f9de-98ed-107b-be50-465db9b9ee58",
  "kind": "theorem",
  "lexical_name": "global_generator_operator_signature_lands_in_local_analyticSubspaces",
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
  "slug": "global-generator-operator-signature-lands-in-local-analyticsubspaces--220ce22ddd84efd8f2353263",
  "source": {
    "blob": "cc363a63ee9dd81448c1ea0c95241a44213924d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 425,
    "path": "GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:220ce22ddd84efd8f2353263ccb4113404030909aaab6d151bbdff0270aea5c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a180f9de-98ed-107b-be50-465db9b9ee58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem global_generator_operator_signature_lands_in_local_analyticSubspaces
    (S : GlobalGeneratorOperatorSignature (K := K)
      (Global := Global) (Local := Local) (Coeff := Coeff)
      (Overlap := Overlap) (I := I) (Data := Data))
    {F : Global} {d : Data}
    (h : S.dataPredicate F d) (i : I) :
    (S.context.restrict i).toLinearMap F ∈ S.context.analyticSubspace i :=
  global_coefficient_fiber_lands_in_local_analyticSubspaces S.context
    (S.recognizesFiber F d h) i

end GeneratorOperatorSignatures

end Think.Analysis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FunctionalAnalyticLinearAlgebra/Variantcae7a770cbbbc86f1c2a0a0350d07c9ea73063d90a0a7fa7297fe5a47b295729.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc363a63ee9dd81448c1ea0c95241a44213924d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
