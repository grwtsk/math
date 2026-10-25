# eccent_le_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eda9adf2-021a-af50-41a0-eeac10cd399a",
  "kind": "lemma",
  "lexical_name": "eccent_le_one_iff",
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
  "slug": "eccent-le-one-iff--7759584f8fd04ef6d81925a8",
  "source": {
    "blob": "bf4bc3914f9e5d04dbfefbd65e13dae7841dba5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7759584f8fd04ef6d81925a88710cdf65fc22022b33128f64617db85b6929072",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eda9adf2-021a-af50-41a0-eeac10cd399a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eccent_le_one_iff (u : α) : G.eccent u ≤ 1 ↔ ∀ v, u ≠ v → G.Adj u v := by
  constructor
  · intro h v huv
    have hd : G.edist u v ≤ 1 := edist_le_eccent.trans h
    have hd' : 1 ≤ G.edist u v := Order.one_le_iff_pos.mpr (G.edist_pos_of_ne huv)
    exact edist_eq_one_iff_adj.mp (le_antisymm (hd') hd).symm
  · intro hall
    rw [eccent_le_iff]
    intro v
    rw [edist_le_one_iff_adj_or_eq]
    exact or_iff_not_imp_right.mpr (hall v)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf4bc3914f9e5d04dbfefbd65e13dae7841dba5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
