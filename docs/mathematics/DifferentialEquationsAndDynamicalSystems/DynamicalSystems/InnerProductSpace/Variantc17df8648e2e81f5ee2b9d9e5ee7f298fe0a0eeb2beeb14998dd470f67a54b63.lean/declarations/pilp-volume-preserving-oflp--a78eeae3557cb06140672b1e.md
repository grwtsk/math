# PiLp.volume_preserving_ofLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b9a5a22423865a1e2b5f74edfbec516ed66ca40",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ca6ae4c-4d9c-4e28-9e0c-1663de23b0e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9fd159f-b632-409d-e5b7-3e952fc98da0",
  "kind": "theorem",
  "lexical_name": "PiLp.volume_preserving_ofLp",
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
  "slug": "pilp-volume-preserving-oflp--a78eeae3557cb06140672b1e",
  "source": {
    "blob": "0b9a5a22423865a1e2b5f74edfbec516ed66ca40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 134,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a78eeae3557cb06140672b1e9da142c3ce7f5aef501fa3657e44f39da38a54f1",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9fd159f-b632-409d-e5b7-3e952fc98da0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PiLp.volume_preserving_ofLp : MeasurePreserving (@ofLp 2 (ι → ℝ)) :=
  EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp ι

/-- The reverse direction of `EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp`, since
`MeasurePreserving.symm` only works for `MeasurableEquiv`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variantc17df8648e2e81f5ee2b9d9e5ee7f298fe0a0eeb2beeb14998dd470f67a54b63.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9a5a22423865a1e2b5f74edfbec516ed66ca40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
