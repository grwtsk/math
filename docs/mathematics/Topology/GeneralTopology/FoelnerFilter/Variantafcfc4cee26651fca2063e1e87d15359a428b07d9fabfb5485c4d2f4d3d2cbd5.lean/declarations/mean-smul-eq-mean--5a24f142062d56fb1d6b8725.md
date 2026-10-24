# mean_smul_eq_mean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e476581597365722a3623f900a5780cf10b8c700",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e3784b3-4af6-9cec-0c37-34a2a23149de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6b01b88-c76c-064e-2ecc-dc853624776a",
  "kind": "theorem",
  "lexical_name": "mean_smul_eq_mean",
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
  "slug": "mean-smul-eq-mean--5a24f142062d56fb1d6b8725",
  "source": {
    "blob": "e476581597365722a3623f900a5780cf10b8c700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 185,
    "path": "GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a24f142062d56fb1d6b8725a3833a475c6bf3569f87c264c29e2948e6bcd919",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6b01b88-c76c-064e-2ecc-dc853624776a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mean_smul_eq_mean [SMulInvariantMeasure G X μ]
    (hfoel : IsFoelner G μ u F) (g : G) (s : Set X) :
    mean μ u F (g • s) = mean μ u F s := by
  simpa using hfoel.mean_smul_eq_mean_smul g 1 s

/-- If there exists a non-trivial Følner filter with respect to some group `G` acting on a measure
    space `X`, then there exists a `G`-invariant finitely additive probability measure on `X`. -/
@[to_additive
/-- If there exists a non-trivial Følner filter with respect to some additive group
    `G` acting on a measure space `X`, then there exists a `G`-invariant finitely additive
    probability measure on `X`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variantafcfc4cee26651fca2063e1e87d15359a428b07d9fabfb5485c4d2f4d3d2cbd5.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e476581597365722a3623f900a5780cf10b8c700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
