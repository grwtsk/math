# isFiniteRelIndex_map_powMonoidHom_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fb82924-07bf-6661-8a1f-b110afabfc1d",
  "kind": "lemma",
  "lexical_name": "isFiniteRelIndex_map_powMonoidHom_of_fg",
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
  "slug": "isfiniterelindex-map-powmonoidhom-of-fg--6ac65b31506ba2ae033791f8",
  "source": {
    "blob": "d29964f7e602d4f1c93ec34f711d18a9abd6a76f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac65b31506ba2ae033791f82e63600fd93df41504fe742de7c6f50c0f8e0ce5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fb82924-07bf-6661-8a1f-b110afabfc1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isFiniteRelIndex_map_powMonoidHom_of_fg {A : Type*} [CommGroup A] {B : Subgroup A}
    (hB : B.FG) {n : ℕ} (hn : n ≠ 0) :
    B.map (powMonoidHom (α := A) n) |>.IsFiniteRelIndex B := by
  rw [isFiniteRelIndex_iff_finiteIndex]
  have : (map (powMonoidHom (α := A) n) B).subgroupOf B = (powMonoidHom (α := B) n).range := by
    ext1
    simp [mem_subgroupOf, Subtype.ext_iff]
  rw [this]
  have := (Group.fg_iff_subgroup_fg B).mpr hB
  exact finiteIndex_range_powMonoidHom_of_fg B hn

end Subgroup

namespace Submodule

variable {R K M : Type*} [CommRing R] [CommRing K] [Algebra R K] [Module.Finite ℤ R]
  [AddCommGroup M] [Module R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta5fcfc26ed21c1da5d6a0458030b74fe022f122dc9e013bee3efdaa751be48d9.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d29964f7e602d4f1c93ec34f711d18a9abd6a76f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
