# pi_properSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4423fc453d3a0f764194dd07e9a6a8e4412a344ba1973c1b76ff14b7b75a30a0",
  "kind": "instance",
  "lexical_name": "pi_properSpace",
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
  "slug": "pi-properspace--d21bd5de581f82b758f45384",
  "source": {
    "blob": "10ff7ccdbcd8df795f9c3252d77bea1bb03318db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 119,
    "path": "GRWTSK/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d21bd5de581f82b758f45384b9cb1e7c9649ac0d91926367dff182deb8241ca6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4423fc453d3a0f764194dd07e9a6a8e4412a344ba1973c1b76ff14b7b75a30a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pi_properSpace {π : β → Type*} [Fintype β] [∀ b, PseudoMetricSpace (π b)]
    [h : ∀ b, ProperSpace (π b)] : ProperSpace (∀ b, π b) := by
  refine .of_isCompact_closedBall_of_le 0 fun x r hr => ?_
  rw [closedBall_pi _ hr]
  exact isCompact_univ_pi fun _ => isCompact_closedBall _ _

/-- A closed subspace of a proper space is proper.
This is true for any proper lipschitz map. See `LipschitzWith.properSpace`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperSpace/Variant09901280c93092ff10e7b37ed3befc5737df748d2dc58895ad0e5d3f7be2428f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ff7ccdbcd8df795f9c3252d77bea1bb03318db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
