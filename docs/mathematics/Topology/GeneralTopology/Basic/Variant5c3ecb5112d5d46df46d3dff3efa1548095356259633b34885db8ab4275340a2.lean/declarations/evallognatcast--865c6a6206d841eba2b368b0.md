# evalLogNatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:884f435c224468ca5300239f627c4feaf6d50ff31e61fb0db859525425ab510a",
  "kind": "def",
  "lexical_name": "evalLogNatCast",
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
  "slug": "evallognatcast--865c6a6206d841eba2b368b0",
  "source": {
    "blob": "0ed3c957d0d1f37094a8da10e42e6d2c2807e7be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 653,
    "line": 644,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:865c6a6206d841eba2b368b06a6857ceebb1457122700c539a1453ee4eb8259f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:884f435c224468ca5300239f627c4feaf6d50ff31e61fb0db859525425ab510a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–653.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def evalLogNatCast : PositivityExt where eval {u α} _zα pα? e :=
  match pα? with | none => pure .none | some _ => do
  match u, α, e with
  | 0, ~q(ℝ), ~q(Real.log (Nat.cast $a)) =>
    assertInstancesCommute
    pure (.nonnegative q(Real.log_natCast_nonneg $a))
  | _, _, _ => throwError "not Real.log"

/-- Extension for the `positivity` tactic: `Real.log` of an integer is always nonnegative. -/
@[positivity Real.log (Int.cast _)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5c3ecb5112d5d46df46d3dff3efa1548095356259633b34885db8ab4275340a2.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ed3c957d0d1f37094a8da10e42e6d2c2807e7be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
