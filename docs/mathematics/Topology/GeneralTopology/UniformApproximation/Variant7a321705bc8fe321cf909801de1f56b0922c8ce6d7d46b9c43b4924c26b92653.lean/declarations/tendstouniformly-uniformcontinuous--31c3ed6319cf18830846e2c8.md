# TendstoUniformly.uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cc07789-a396-e98d-4733-38850dea7502",
  "kind": "theorem",
  "lexical_name": "TendstoUniformly.uniformContinuous",
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
  "slug": "tendstouniformly-uniformcontinuous--31c3ed6319cf18830846e2c8",
  "source": {
    "blob": "4960f59a1439be2fbc8d3848f47226b7849a97b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 233,
    "path": "GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant7a321705bc8fe321cf909801de1f56b0922c8ce6d7d46b9c43b4924c26b92653.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31c3ed6319cf18830846e2c8a3cab09d6948f3c01285aadc58f0f5fa74e8e17e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformApproximation/Variant7a321705bc8fe321cf909801de1f56b0922c8ce6d7d46b9c43b4924c26b92653.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cc07789-a396-e98d-4733-38850dea7502`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem TendstoUniformly.uniformContinuous (h : TendstoUniformly F f p)
    (hc : ∃ᶠ n in p, UniformContinuous (F n)) : UniformContinuous f :=
  uniformContinuous_of_uniform_approx_of_uniformContinuous fun u hu ↦
    let ⟨i, hF⟩ := (hc.and_eventually (h u hu)).exists
    ⟨F i, hF⟩

end UniformContinuous
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformApproximation/Variant7a321705bc8fe321cf909801de1f56b0922c8ce6d7d46b9c43b4924c26b92653.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant7a321705bc8fe321cf909801de1f56b0922c8ce6d7d46b9c43b4924c26b92653.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4960f59a1439be2fbc8d3848f47226b7849a97b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
