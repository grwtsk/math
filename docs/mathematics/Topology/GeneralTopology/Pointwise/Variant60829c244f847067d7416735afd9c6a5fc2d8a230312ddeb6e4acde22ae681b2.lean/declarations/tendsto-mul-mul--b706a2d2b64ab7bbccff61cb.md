# Tendsto.mul_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3b6ec21-5a9c-5067-36cf-f6863c22072d",
  "kind": "theorem",
  "lexical_name": "Tendsto.mul_mul",
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
  "slug": "tendsto-mul-mul--b706a2d2b64ab7bbccff61cb",
  "source": {
    "blob": "1d61393a3ba26dc0b22691ac7c653aaa5808a3a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 638,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b706a2d2b64ab7bbccff61cbd5750419888520eac0919b26b6e6b16b5e2495b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3b6ec21-5a9c-5067-36cf-f6863c22072d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.mul_mul [MulHomClass F α β] (m : F) {f₁ g₁ : Filter α} {f₂ g₂ : Filter β} :
    Tendsto m f₁ f₂ → Tendsto m g₁ g₂ → Tendsto m (f₁ * g₁) (f₂ * g₂) := fun hf hg =>
  (Filter.map_mul m).trans_le <| mul_le_mul' hf hg
#align filter.tendsto.mul_mul Filter.Tendsto.mul_mul
#align filter.tendsto.add_add Filter.Tendsto.add_add

/-- `pure` as a `MonoidHom`. -/
@[to_additive "`pure` as an `AddMonoidHom`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d61393a3ba26dc0b22691ac7c653aaa5808a3a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
