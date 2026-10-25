# ediam_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f89bf46c-c453-1d50-24cd-0328c4a438ff",
  "kind": "lemma",
  "lexical_name": "ediam_eq_one",
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
  "slug": "ediam-eq-one--000c1c84e5c17e4de62cbcec",
  "source": {
    "blob": "bf4bc3914f9e5d04dbfefbd65e13dae7841dba5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 248,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:000c1c84e5c17e4de62cbceccd43dc658e6ab8bcd073fd7756ede5c4dd6f41ae",
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

Occurrence: `result:f89bf46c-c453-1d50-24cd-0328c4a438ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ediam_eq_one [Nontrivial α] : G.ediam = 1 ↔ G = ⊤ := by
  refine ⟨fun h ↦ ?_, fun h ↦ h ▸ ediam_top⟩
  rw [eq_top_iff_forall_eccent_eq_one]
  intro u
  apply le_antisymm (h ▸ eccent_le_ediam)
  rw [Order.one_le_iff_pos, pos_iff_ne_zero]
  exact eccent_ne_zero u

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Diam/Variantf9ed40f840e8568f797c694c8679fe738a2db53156a5f90c7ffb4fa9b9be6418.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf4bc3914f9e5d04dbfefbd65e13dae7841dba5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
