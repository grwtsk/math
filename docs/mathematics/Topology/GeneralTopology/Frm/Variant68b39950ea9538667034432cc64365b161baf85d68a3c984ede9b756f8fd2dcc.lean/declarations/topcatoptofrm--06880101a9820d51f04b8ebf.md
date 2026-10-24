# topCatOpToFrm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee0bab405b8a645968577c6272948ab5704e89c923461ed870e9f9fb32b0cb52",
  "kind": "def",
  "lexical_name": "topCatOpToFrm",
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
  "slug": "topcatoptofrm--06880101a9820d51f04b8ebf",
  "source": {
    "blob": "68bb0465d6eedfe58354523309fac03eed4195f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/Frm/Variant68b39950ea9538667034432cc64365b161baf85d68a3c984ede9b756f8fd2dcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06880101a9820d51f04b8ebf94a326965f0dad6c442f504c89b1ab4f79ca07c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Frm/Variant68b39950ea9538667034432cc64365b161baf85d68a3c984ede9b756f8fd2dcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee0bab405b8a645968577c6272948ab5704e89c923461ed870e9f9fb32b0cb52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topCatOpToFrm : TopCatᵒᵖ ⥤ Frm where
  obj X := ↧(Opens (unop X : TopCat))
  map f := Frm.ofHom <| Opens.comap <| (Quiver.Hom.unop f).hom

-- Note, `CompHaus` is too strong. We only need `T0Space`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Frm/Variant68b39950ea9538667034432cc64365b161baf85d68a3c984ede9b756f8fd2dcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Frm/Variant68b39950ea9538667034432cc64365b161baf85d68a3c984ede9b756f8fd2dcc.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68bb0465d6eedfe58354523309fac03eed4195f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
