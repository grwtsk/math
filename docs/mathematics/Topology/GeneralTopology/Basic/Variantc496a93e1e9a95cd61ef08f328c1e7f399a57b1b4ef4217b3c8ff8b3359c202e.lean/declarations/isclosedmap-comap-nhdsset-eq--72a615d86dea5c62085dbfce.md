# IsClosedMap.comap_nhdsSet_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9666ffa1-53c3-defe-a72c-56b4e2a81017",
  "kind": "theorem",
  "lexical_name": "IsClosedMap.comap_nhdsSet_eq",
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
  "slug": "isclosedmap-comap-nhdsset-eq--72a615d86dea5c62085dbfce",
  "source": {
    "blob": "c554f98ab922db600d84c6f4bfa03f2671c8bf17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 659,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72a615d86dea5c62085dbfcee343467a59528bb053e449a0a5cfccf759cd325f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9666ffa1-53c3-defe-a72c-56b4e2a81017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosedMap.comap_nhdsSet_eq (hf : IsClosedMap f) (hf' : Continuous f) (s : Set Y) :
    comap f (𝓝ˢ s) = 𝓝ˢ (f ⁻¹' s) :=
  le_antisymm (isClosedMap_iff_comap_nhdsSet_le.mp hf)
  -- Note: below should be an application of `Continuous.tendsto_nhdsSet_nhdsSet`, but this is only
  -- proven later...
    (nhdsSet_le.mpr fun x hx ↦ (hf'.tendsto x).le_comap.trans (comap_mono (nhds_le_nhdsSet hx)))

/-- Assume `f` is a closed map. If some property `p` holds around every point in the fiber of `f`
at `y₀`, then for any `y` close enough to `y₀` we have that `p` holds on the fiber at `y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc496a93e1e9a95cd61ef08f328c1e7f399a57b1b4ef4217b3c8ff8b3359c202e.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c554f98ab922db600d84c6f4bfa03f2671c8bf17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
