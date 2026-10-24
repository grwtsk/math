# tsum_fiberwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5aa367f5-8ae2-5bb8-3272-b84d8a2fcb92",
  "kind": "theorem",
  "lexical_name": "tsum_fiberwise",
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
  "slug": "tsum-fiberwise--e1bf3803d5b57952bf81b126",
  "source": {
    "blob": "2b6ad1b40d452d54d1359a5cff20c3984b9d1240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 830,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1bf3803d5b57952bf81b126603641ab25a3760ba894bc83bc3374f45aca68ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aa367f5-8ae2-5bb8-3272-b84d8a2fcb92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 830–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_fiberwise (f : β → ℝ≥0∞) (g : β → γ) :
    ∑' x, ∑' b : g ⁻¹' {x}, f b = ∑' i, f i := by
  apply HasSum.tsum_eq
  let equiv := Equiv.sigmaFiberEquiv g
  apply (equiv.hasSum_iff.mpr ENNReal.summable.hasSum).sigma
  exact fun _ ↦ ENNReal.summable.hasSum_iff.mpr rfl

end tsum

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant90de27f739aa7efc0827bea727328e2474a187023d496c197399d0e1de0fe0f7.lean#L830).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6ad1b40d452d54d1359a5cff20c3984b9d1240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
