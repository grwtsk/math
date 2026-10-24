# emetricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a5d7824b4a434e92fab85b1344f8471217b82d6187187f42c87953bfbb6683d",
  "kind": "def",
  "lexical_name": "emetricSpace",
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
  "slug": "emetricspace--0cb5f77503fb8c64dd107e83",
  "source": {
    "blob": "e2bda182d92ad616fe5d318db1ee0819ec801897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 923,
    "line": 908,
    "path": "GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cb5f77503fb8c64dd107e83569013f9e5e450e057125ceda8f3a23832b17ee1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a5d7824b4a434e92fab85b1344f8471217b82d6187187f42c87953bfbb6683d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 908–923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def emetricSpace : EMetricSpace (∀ i, F i) where
  eq_of_edist_eq_zero := by simp [edist_eq_tsum, funext_iff]

end EMetricSpace

attribute [scoped instance] PiCountable.emetricSpace

section PseudoMetricSpace
variable [∀ i, PseudoMetricSpace (F i)] {x y : ∀ i, F i} {i : ι}


/-- Given a countable family of metric spaces, one may put a distance on their product `Π i, E i`.

It is highly non-canonical, though, and therefore not registered as a global instance.
The distance we use here is `dist x y = ∑' i, min (1/2)^(encode i) (dist (x i) (y i))`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiNat/Variant4c6a1490e39dd2abfc2aca502ef37811ed717512b9deea877a643ac9ca2c9e4e.lean#L908).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2bda182d92ad616fe5d318db1ee0819ec801897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
