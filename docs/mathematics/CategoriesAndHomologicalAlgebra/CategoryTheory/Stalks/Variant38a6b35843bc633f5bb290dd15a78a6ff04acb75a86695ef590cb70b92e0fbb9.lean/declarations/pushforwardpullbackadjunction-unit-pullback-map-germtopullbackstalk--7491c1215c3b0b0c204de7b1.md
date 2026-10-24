# pushforwardPullbackAdjunction_unit_pullback_map_germToPullbackStalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abd0b597-4d9d-8130-e116-901c9f7924bf",
  "kind": "lemma",
  "lexical_name": "pushforwardPullbackAdjunction_unit_pullback_map_germToPullbackStalk",
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
  "slug": "pushforwardpullbackadjunction-unit-pullback-map-germtopullbackstalk--7491c1215c3b0b0c204de7b1",
  "source": {
    "blob": "ccd349bd1003876841689780e0fe453c4ff911a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 263,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7491c1215c3b0b0c204de7b1d5aa0bf28bca9ef81bfb20fe3b6da912aa9f7860",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abd0b597-4d9d-8130-e116-901c9f7924bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pushforwardPullbackAdjunction_unit_pullback_map_germToPullbackStalk
    (f : X ⟶ Y) (F : Y.Presheaf C) (U : Opens X) (x : X) (hx : x ∈ U) (V : Opens Y)
    (hV : U ≤ (Opens.map f).obj V) :
    ((pushforwardPullbackAdjunction C f).unit.app F).app (op V) ≫
      ((pullback C f).obj F).map (homOfLE hV).op ≫ germToPullbackStalk C f F U x hx  =
        F.germ _ (f x) (hV hx) := by
  simpa [pushforwardPullbackAdjunction] using
    ((Opens.map f).op.isPointwiseLeftKanExtensionLeftKanExtensionUnit F (op U)).fac _
      (CostructuredArrow.mk (homOfLE hV).op)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd349bd1003876841689780e0fe453c4ff911a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
