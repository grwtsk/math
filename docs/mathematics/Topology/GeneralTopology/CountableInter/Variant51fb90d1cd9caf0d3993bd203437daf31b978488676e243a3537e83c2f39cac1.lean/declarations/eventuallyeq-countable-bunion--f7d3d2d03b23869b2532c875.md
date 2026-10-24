# EventuallyEq.countable_bUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8e533eb-c549-9e68-585a-e440f13ec9cc",
  "kind": "theorem",
  "lexical_name": "EventuallyEq.countable_bUnion",
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
  "slug": "eventuallyeq-countable-bunion--f7d3d2d03b23869b2532c875",
  "source": {
    "blob": "b8530e54e584f5c61952059ad40825255694ae2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7d3d2d03b23869b2532c8758e72ca4c01fda16e4254177c84ccadf985be0a8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8e533eb-c549-9e68-585a-e440f13ec9cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EventuallyEq.countable_bUnion {ι : Type*} {S : Set ι} (hS : S.Countable)
    {s t : ∀ i ∈ S, Set α} (h : ∀ i hi, s i hi =ᶠ[l] t i hi) :
    ⋃ i ∈ S, s i ‹_› =ᶠ[l] ⋃ i ∈ S, t i ‹_› :=
  (EventuallyLE.countable_bUnion hS fun i hi => (h i hi).le).antisymm
    (EventuallyLE.countable_bUnion hS fun i hi => (h i hi).symm.le)
#align eventually_eq.countable_bUnion EventuallyEq.countable_bUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variant51fb90d1cd9caf0d3993bd203437daf31b978488676e243a3537e83c2f39cac1.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8530e54e584f5c61952059ad40825255694ae2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
