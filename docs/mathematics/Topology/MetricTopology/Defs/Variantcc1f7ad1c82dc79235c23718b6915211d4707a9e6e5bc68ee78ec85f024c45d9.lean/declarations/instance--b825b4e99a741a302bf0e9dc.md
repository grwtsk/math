# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09a43af8c77bdf1dfeb19f898d2b2557f2735f045a4d3a44e8528261cc35bb29",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b825b4e99a741a302bf0e9dc",
  "source": {
    "blob": "10910c95e518dfacb8d4fcb88d7e689315791952",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 203,
    "path": "GRWTSK/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b825b4e99a741a302bf0e9dc070f94f1dcb620d57cf4aa31afbd3fef08b6cc85",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09a43af8c77bdf1dfeb19f898d2b2557f2735f045a4d3a44e8528261cc35bb29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MetricSpace PUnit.{u + 1} where
  dist _ _ := 0
  dist_self _ := rfl
  dist_comm _ _ := rfl
  edist _ _ := 0
  eq_of_dist_eq_zero _ := Subsingleton.elim _ _
  dist_triangle _ _ _ := show (0 : ℝ) ≤ 0 + 0 by rw [add_zero]
  toUniformSpace := inferInstance
  uniformity_dist := by
    simp +contextual [principal_univ, eq_top_of_neBot (𝓤 PUnit)]

/-!
### `Additive`, `Multiplicative`

The distance on those type synonyms is inherited without change.
-/


open Additive Multiplicative

section

variable [Dist X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Defs/Variantcc1f7ad1c82dc79235c23718b6915211d4707a9e6e5bc68ee78ec85f024c45d9.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10910c95e518dfacb8d4fcb88d7e689315791952` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
