# thickenedIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb7fd7133818fa4a8f119872a23f8b33cbbc70d6772faaedfeb12fdf51335f83",
  "kind": "def",
  "lexical_name": "thickenedIndicator",
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
  "slug": "thickenedindicator--26521511d0f6b71100dfbf49",
  "source": {
    "blob": "00c921650d72ad4f6e52b200baca6915ed80fde7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26521511d0f6b71100dfbf49501c25fb942d6d83f8209421d0bcca2a46912364",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb7fd7133818fa4a8f119872a23f8b33cbbc70d6772faaedfeb12fdf51335f83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thickenedIndicator {δ : ℝ} (δ_pos : 0 < δ) (E : Set α) : α →ᵇ ℝ≥0 where
  toFun := fun x : α => (thickenedIndicatorAux δ E x).toNNReal
  continuous_toFun := by
    apply ContinuousOn.comp_continuous continuousOn_toNNReal
      (continuous_thickenedIndicatorAux δ_pos E)
    intro x
    exact (lt_of_le_of_lt (@thickenedIndicatorAux_le_one _ _ δ E x) one_lt_top).ne
  map_bounded' := by
    use 2
    intro x y
    rw [NNReal.dist_eq]
    apply (abs_sub _ _).trans
    rw [NNReal.abs_eq, NNReal.abs_eq, ← one_add_one_eq_two]
    have key := @thickenedIndicatorAux_le_one _ _ δ E
    apply add_le_add <;>
      · norm_cast
        refine' (toNNReal_le_toNNReal (lt_of_le_of_lt (key _) one_lt_top).ne one_ne_top).mpr (key _)
#align thickened_indicator thickenedIndicator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThickenedIndicator/Variant698919640c5d038839cd452645f1f88d348836ac81d8768e6afbe1406eb04e21.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c921650d72ad4f6e52b200baca6915ed80fde7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
