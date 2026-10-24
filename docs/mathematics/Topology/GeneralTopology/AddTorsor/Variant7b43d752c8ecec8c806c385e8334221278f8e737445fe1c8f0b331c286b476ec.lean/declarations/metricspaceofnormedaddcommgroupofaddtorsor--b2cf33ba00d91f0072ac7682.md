# metricSpaceOfNormedAddCommGroupOfAddTorsor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f95291f07ba0f33aa8aa09a61ce0354957594636afd223a98cdd536750b9fd4c",
  "kind": "def",
  "lexical_name": "metricSpaceOfNormedAddCommGroupOfAddTorsor",
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
  "slug": "metricspaceofnormedaddcommgroupofaddtorsor--b2cf33ba00d91f0072ac7682",
  "source": {
    "blob": "296b9013ca14defcc82b40f1b1b8162a78f3e7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2cf33ba00d91f0072ac768213792f4010be95149b3dbcf82bd153eacfc935e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f95291f07ba0f33aa8aa09a61ce0354957594636afd223a98cdd536750b9fd4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def metricSpaceOfNormedAddCommGroupOfAddTorsor (V P : Type*) [NormedAddCommGroup V]
    [AddTorsor V P] : MetricSpace P where
  dist x y := ‖(x -ᵥ y : V)‖
  dist_self x := by simp
  eq_of_dist_eq_zero h := by simpa using h
  dist_comm x y := by simp only [← neg_vsub_eq_vsub_rev y x, norm_neg]
  dist_triangle x y z := by
    rw [← vsub_add_vsub_cancel]
    apply norm_add_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `296b9013ca14defcc82b40f1b1b8162a78f3e7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
