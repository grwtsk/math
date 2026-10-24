# prototypeModelId

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5deb9f347460e95af08d223f7bde0baf02b08e6ed8f42e2278873d2e7111a7c",
  "kind": "def",
  "lexical_name": "prototypeModelId",
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
  "slug": "prototypemodelid--f74bef4960047cb7790ad848",
  "source": {
    "blob": "34a089e104f5f813b46ec6cc696eab67fb998b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Varianta987e0d70aad1d9f23ed7e6612538b516c3af0df969ffcfb61e106dcd0eadf9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f74bef4960047cb7790ad84895564785a03ad5b9c7f6f7bc5e36aafc036e5af7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Models/Varianta987e0d70aad1d9f23ed7e6612538b516c3af0df969ffcfb61e106dcd0eadf9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5deb9f347460e95af08d223f7bde0baf02b08e6ed8f42e2278873d2e7111a7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeModelId : PrototypeModel → WorldModelId
  | .permutationDynamics => ⟨"world-model:finite-permutation-dynamics"⟩
  | .booleanQuantizedMatrices => ⟨"world-model:boolean-quantized-matrices"⟩
  | .hammingGroupActions => ⟨"world-model:finite-hamming-group-actions"⟩
  | .strictSimplicialFabric => ⟨"world-model:strict-simplicial-fabric"⟩
  | .finiteEditHomology => ⟨"world-model:finite-edit-homology"⟩

/-- All five finite semantic wrappers use the requested semantic version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Models/Varianta987e0d70aad1d9f23ed7e6612538b516c3af0df969ffcfb61e106dcd0eadf9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Varianta987e0d70aad1d9f23ed7e6612538b516c3af0df969ffcfb61e106dcd0eadf9a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a089e104f5f813b46ec6cc696eab67fb998b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
