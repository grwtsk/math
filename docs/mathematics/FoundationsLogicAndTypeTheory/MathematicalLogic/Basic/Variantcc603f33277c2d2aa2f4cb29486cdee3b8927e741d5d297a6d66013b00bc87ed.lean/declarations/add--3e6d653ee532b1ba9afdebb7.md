# add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c0f5033-2081-e9ff-7daa-009ae67d9298",
  "kind": "theorem",
  "lexical_name": "add",
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
  "slug": "add--3e6d653ee532b1ba9afdebb7",
  "source": {
    "blob": "92ff2571293b1f38ca4b8cfadcc5454f52958fe6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 244,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e6d653ee532b1ba9afdebb781919e55d6ab296248d80a9187143a1508df4530",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c0f5033-2081-e9ff-7daa-009ae67d9298`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add : ∀ {x y : PGame} (_ : Numeric x) (_ : Numeric y), Numeric (x + y)
  | ⟨xl, xr, xL, xR⟩, ⟨yl, yr, yL, yR⟩, ox, oy =>
    ⟨by
      rintro (ix | iy) (jx | jy)
      · exact add_lt_add_right (ox.1 ix jx) _
      · exact (add_lf_add_of_lf_of_le (lf_mk _ _ ix) (oy.le_moveRight jy)).lt
          ((ox.moveLeft ix).add oy) (ox.add (oy.moveRight jy))
      · exact (add_lf_add_of_lf_of_le (mk_lf _ _ jx) (oy.moveLeft_le iy)).lt
          (ox.add (oy.moveLeft iy)) ((ox.moveRight jx).add oy)
      · exact add_lt_add_left (oy.1 iy jy) ⟨xl, xr, xL, xR⟩, by
      constructor
      · rintro (ix | iy)
        · exact (ox.moveLeft ix).add oy
        · exact ox.add (oy.moveLeft iy)
      · rintro (jx | jy)
        · apply (ox.moveRight jx).add oy
        · apply ox.add (oy.moveRight jy)⟩
termination_by _ x y _ _ => (x, y) -- Porting note: Added `termination_by`
decreasing_by pgame_wf_tac
#align pgame.numeric.add SetTheory.PGame.Numeric.add

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantcc603f33277c2d2aa2f4cb29486cdee3b8927e741d5d297a6d66013b00bc87ed.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ff2571293b1f38ca4b8cfadcc5454f52958fe6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
