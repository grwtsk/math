# uniformContinuous_equiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c209df2c06fc9e9aaa2bd88046e0495cc0fb56f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f862f14f-dcb6-6bc1-a789-f17a7f9dfd41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28ba70a6-6b66-8f39-336c-bb74c2c2d4cf",
  "kind": "theorem",
  "lexical_name": "uniformContinuous_equiv_symm",
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
  "slug": "uniformcontinuous-equiv-symm--9de2b5e63f5e480cf0e116b9",
  "source": {
    "blob": "7c209df2c06fc9e9aaa2bd88046e0495cc0fb56f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 447,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variante279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de2b5e63f5e480cf0e116b9d3a8c6191fc01d85a6e72cb7dc41348f952f5191",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variante279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28ba70a6-6b66-8f39-336c-bb74c2c2d4cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformContinuous_equiv_symm [∀ i, UniformSpace (β i)] :
    UniformContinuous (WithLp.equiv p (∀ i, β i)).symm :=
  uniformContinuous_id
#align pi_Lp.uniform_continuous_equiv_symm PiLp.uniformContinuous_equiv_symm

@[continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variante279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variante279ac8bddaf72380a7116620ff103f18ea79375c6f2ce117b9af6d860ad6d21.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c209df2c06fc9e9aaa2bd88046e0495cc0fb56f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
