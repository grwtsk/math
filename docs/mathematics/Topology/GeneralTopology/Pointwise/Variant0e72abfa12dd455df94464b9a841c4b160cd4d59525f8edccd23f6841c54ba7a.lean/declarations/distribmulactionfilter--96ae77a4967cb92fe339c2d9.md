# distribMulActionFilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11933bf997820003307058cf1ac31d8bb48cbfa2d142b693202828d93f2859a3",
  "kind": "def",
  "lexical_name": "distribMulActionFilter",
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
  "slug": "distribmulactionfilter--96ae77a4967cb92fe339c2d9",
  "source": {
    "blob": "449673628534b0e914cd919cd9dfd65b15756cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1328,
    "line": 1322,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96ae77a4967cb92fe339c2d903bcf3283442c4c940e3aea4dead0869bea66f78",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11933bf997820003307058cf1ac31d8bb48cbfa2d142b693202828d93f2859a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1322–1328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def distribMulActionFilter [Monoid α] [AddMonoid β] [DistribMulAction α β] :
    DistribMulAction α (Filter β) where
  smul_add _ _ _ := map_map₂_distrib <| smul_add _
  smul_zero _ := (map_pure _ _).trans <| by dsimp only; rw [smul_zero, pure_zero]
#align filter.distrib_mul_action_filter Filter.distribMulActionFilter

/-- A multiplicative action of a monoid on a monoid `β` gives a multiplicative action on `Set β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean#L1322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449673628534b0e914cd919cd9dfd65b15756cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
