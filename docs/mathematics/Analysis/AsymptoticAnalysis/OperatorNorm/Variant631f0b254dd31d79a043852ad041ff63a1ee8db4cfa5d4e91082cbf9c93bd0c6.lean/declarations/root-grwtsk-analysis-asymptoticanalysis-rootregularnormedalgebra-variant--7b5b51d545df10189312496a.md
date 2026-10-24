# _root_.GRWTSK.Analysis.AsymptoticAnalysis.RootRegularNormedAlgebra.Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.NormedAlgebra.instRegularNormedAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cc6ef8cc7e5f8ca85544d2e082aea64f4204af91b1e3c462316633bc330bd1f",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.RootRegularNormedAlgebra.Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.NormedAlgebra.instRegularNormedAlgebra",
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
  "slug": "root-grwtsk-analysis-asymptoticanalysis-rootregularnormedalgebra-variant--7b5b51d545df10189312496a",
  "source": {
    "blob": "d430a4d0f26a7ca7e607d1c5349583e2d4936119",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1201,
    "line": 1193,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b5b51d545df10189312496ac0d6e7407adff719ffd746681875588e8c2618e2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cc6ef8cc7e5f8ca85544d2e082aea64f4204af91b1e3c462316633bc330bd1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1193–1201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Analysis.AsymptoticAnalysis.RootRegularNormedAlgebra.Variantf5728f89cef2252aeeca4de3211c48c98918cf3d13b0860740b98cef9a52e655.NormedAlgebra.instRegularNormedAlgebra {𝕜 𝕜' : Type _} [NontriviallyNormedField 𝕜]
    [SeminormedRing 𝕜'] [NormedAlgebra 𝕜 𝕜'] [NormOneClass 𝕜'] : RegularNormedAlgebra 𝕜 𝕜'  where
  isometry_mul' := AddMonoidHomClass.isometry_of_norm (mul 𝕜 𝕜') <|
    fun x => le_antisymm (op_norm_mul_apply_le _ _ _) <| by
      convert ratio_le_op_norm ((mul 𝕜 𝕜') x) (1 : 𝕜')
      simp [norm_one]

variable [RegularNormedAlgebra 𝕜 𝕜']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/OperatorNorm/Variant631f0b254dd31d79a043852ad041ff63a1ee8db4cfa5d4e91082cbf9c93bd0c6.lean#L1193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d430a4d0f26a7ca7e607d1c5349583e2d4936119` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
