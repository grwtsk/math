# IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f07c5b4-44a5-ee68-e51e-2479140b8e33",
  "kind": "theorem",
  "lexical_name": "IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed",
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
  "slug": "issimplemodule-algebramap-end-bijective-of-isalgclosed--121763eb47baa052ea0274e2",
  "source": {
    "blob": "e7dae1b17a98a4d74c119338d8b1e6aa6449b8c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant8376748039ba26b7b86bc2db9dd6ec9e8fa02c55f5d4f786539f97fb3bcf136c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:121763eb47baa052ea0274e24741e8510bac2a503b5a6b0a7af0f008a8efe9d5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant8376748039ba26b7b86bc2db9dd6ec9e8fa02c55f5d4f786539f97fb3bcf136c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f07c5b4-44a5-ee68-e51e-2479140b8e33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSimpleModule.algebraMap_end_bijective_of_isAlgClosed :
    Function.Bijective (algebraMap k (Module.End A V)) := by
  have : Module.Finite k (Module.End A V) := .of_injective (LinearMap.restrictScalarsₗ k A V V k) <|
    LinearMap.restrictScalars_injective _
  classical exact IsAlgClosed.algebraMap_bijective_of_isIntegral (k := k)

variable (A V)

open scoped IsMulCommutative in
/-- Any finite-dimensional irreducible representation of a commutative algebra over an algebraically
closed field is one-dimensional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant8376748039ba26b7b86bc2db9dd6ec9e8fa02c55f5d4f786539f97fb3bcf136c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant8376748039ba26b7b86bc2db9dd6ec9e8fa02c55f5d4f786539f97fb3bcf136c.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7dae1b17a98a4d74c119338d8b1e6aa6449b8c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
