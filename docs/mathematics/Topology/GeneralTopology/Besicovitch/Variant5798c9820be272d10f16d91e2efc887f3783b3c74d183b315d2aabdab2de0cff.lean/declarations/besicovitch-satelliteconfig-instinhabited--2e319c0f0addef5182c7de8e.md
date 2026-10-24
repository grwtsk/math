# Besicovitch.SatelliteConfig.instInhabited

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb7d7ee7bbd63101c13196a43c24a96695119498d8ac5ee17b09ff5ff0563f11",
  "kind": "instance",
  "lexical_name": "Besicovitch.SatelliteConfig.instInhabited",
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
  "slug": "besicovitch-satelliteconfig-instinhabited--2e319c0f0addef5182c7de8e",
  "source": {
    "blob": "6d4971ecfc5f96a35723ba82e66a6aeb9040edf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e319c0f0addef5182c7de8e31a07af557cb882794913999df918d3362a94ad1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb7d7ee7bbd63101c13196a43c24a96695119498d8ac5ee17b09ff5ff0563f11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Besicovitch.SatelliteConfig.instInhabited {α : Type*} {τ : ℝ}
    [Inhabited α] [MetricSpace α] : Inhabited (Besicovitch.SatelliteConfig α 0 τ) :=
  ⟨{  c := default
      r := fun _ => 1
      rpos := fun _ => zero_lt_one
      h := fun i j hij => (hij (Subsingleton.elim (α := Fin 1) i j)).elim
      hlast := fun i hi => by
        rw [Subsingleton.elim (α := Fin 1) i (last 0)] at hi; exact (lt_irrefl _ hi).elim
      inter := fun i hi => by
        rw [Subsingleton.elim (α := Fin 1) i (last 0)] at hi; exact (lt_irrefl _ hi).elim }⟩

namespace Besicovitch

namespace SatelliteConfig

variable {α : Type*} [MetricSpace α] {N : ℕ} {τ : ℝ} (a : SatelliteConfig α N τ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant5798c9820be272d10f16d91e2efc887f3783b3c74d183b315d2aabdab2de0cff.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4971ecfc5f96a35723ba82e66a6aeb9040edf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
