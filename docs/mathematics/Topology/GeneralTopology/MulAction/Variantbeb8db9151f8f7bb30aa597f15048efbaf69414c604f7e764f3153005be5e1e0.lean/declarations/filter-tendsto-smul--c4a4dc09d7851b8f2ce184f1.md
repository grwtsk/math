# Filter.Tendsto.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff7adf9d-ed90-9e30-d877-f7e80b23a947",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.smul",
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
  "slug": "filter-tendsto-smul--c4a4dc09d7851b8f2ce184f1",
  "source": {
    "blob": "8cf1ed6b72db6be8f05f62c54f90c09341ac583e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4a4dc09d7851b8f2ce184f19bbd9abc939dd542b1c263050fc8dc311805ec4d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff7adf9d-ed90-9e30-d877-f7e80b23a947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.smul {f : α → M} {g : α → X} {l : Filter α} {c : M} {a : X}
    (hf : Tendsto f l (𝓝 c)) (hg : Tendsto g l (𝓝 a)) :
    Tendsto (fun x => f x • g x) l (𝓝 <| c • a) :=
  (continuous_smul.tendsto _).comp (hf.prodMk_nhds hg)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MulAction/Variantbeb8db9151f8f7bb30aa597f15048efbaf69414c604f7e764f3153005be5e1e0.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf1ed6b72db6be8f05f62c54f90c09341ac583e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
