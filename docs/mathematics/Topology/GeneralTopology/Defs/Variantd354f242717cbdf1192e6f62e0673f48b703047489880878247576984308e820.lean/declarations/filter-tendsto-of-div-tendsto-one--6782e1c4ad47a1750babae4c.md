# Filter.tendsto_of_div_tendsto_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07531d79-4794-bddc-b01c-d7e93738a88f",
  "kind": "lemma",
  "lexical_name": "Filter.tendsto_of_div_tendsto_one",
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
  "slug": "filter-tendsto-of-div-tendsto-one--6782e1c4ad47a1750babae4c",
  "source": {
    "blob": "6abc2ebe2f5926f9e471d2905278fcfe4de7467a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantd354f242717cbdf1192e6f62e0673f48b703047489880878247576984308e820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6782e1c4ad47a1750babae4caab548cdd83c62be1ccdf36ed28cd9e65fde0e6f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantd354f242717cbdf1192e6f62e0673f48b703047489880878247576984308e820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07531d79-4794-bddc-b01c-d7e93738a88f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Filter.tendsto_of_div_tendsto_one {α E : Type*} [CommGroup E] [TopologicalSpace E]
    [ContinuousMul E] {f g : α → E} (m : E) {x : Filter α} (hf : Tendsto f x (𝓝 m))
    (hfg : Tendsto (g / f) x (𝓝 1)) : Tendsto g x (𝓝 m) := by
  simpa using Tendsto.mul hf hfg

variable {X : Type*} [TopologicalSpace X] {f g : X → M} {s : Set X} {x : X}

@[to_fun (attr := to_additive (attr := continuity, fun_prop))]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantd354f242717cbdf1192e6f62e0673f48b703047489880878247576984308e820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantd354f242717cbdf1192e6f62e0673f48b703047489880878247576984308e820.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6abc2ebe2f5926f9e471d2905278fcfe4de7467a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
