# smoothSheafCommRing.ι_evalHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ebe24584-4c26-3785-ed3e-77f209be45ad",
  "kind": "lemma",
  "lexical_name": "smoothSheafCommRing.ι_evalHom",
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
  "slug": "smoothsheafcommring-evalhom--b579351b401c2490cbb71d8f",
  "source": {
    "blob": "f7688d9a32c03ec419d80638acb14ce051589252",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 363,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b579351b401c2490cbb71d8f5e7aaabde95d564f213ccb3b83d4c75300bb5b4c",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebe24584-4c26-3785-ed3e-77f209be45ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, reassoc, elementwise] lemma smoothSheafCommRing.ι_evalHom (x : TopCat.of M) (U) :
    colimit.ι ((OpenNhds.inclusion x).op ⋙ _) U ≫ smoothSheafCommRing.evalHom IM I M R x =
    smoothSheafCommRing.evalAt _ _ _ _ _ _ :=
  colimit.ι_desc _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant1a57af4f6521dc79422e72a2850e2a4a50d13335e4fbf9e8dcebeac1d23b44ed.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7688d9a32c03ec419d80638acb14ce051589252` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
