# resMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d5801186ceb1b1bd0d84b8d3a3925ad98dc0fb733223ae70aa77b486e940674",
  "kind": "def",
  "lexical_name": "resMap",
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
  "slug": "resmap--cbff14263e7411e2be8e287e",
  "source": {
    "blob": "e71ba081da78279daa1d0312d252f73f477bb8c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/Algebra/GroupTheory/Res/Variant920567d8902528136b31c95856921c77c41d08f8eb39178a231245ea69e70d57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbff14263e7411e2be8e287e6de888b91f70056341587769f2cb6696b9786817",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Res/Variant920567d8902528136b31c95856921c77c41d08f8eb39178a231245ea69e70d57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d5801186ceb1b1bd0d84b8d3a3925ad98dc0fb733223ae70aa77b486e940674`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resMap {X Y : Rep k G} (f : H →* G) (p : X ⟶ Y) :
    of (X := X.V) (X.ρ.comp f) ⟶ of (X := Y.V) (Y.ρ.comp f) :=
  ofHom ⟨p.hom, fun h ↦ by simpa using! p.hom.2 (f h)⟩

/-- The restriction functor `Rep R G ⥤ Rep R H` for a subgroup `H` of `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Res/Variant920567d8902528136b31c95856921c77c41d08f8eb39178a231245ea69e70d57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Res/Variant920567d8902528136b31c95856921c77c41d08f8eb39178a231245ea69e70d57.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71ba081da78279daa1d0312d252f73f477bb8c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
