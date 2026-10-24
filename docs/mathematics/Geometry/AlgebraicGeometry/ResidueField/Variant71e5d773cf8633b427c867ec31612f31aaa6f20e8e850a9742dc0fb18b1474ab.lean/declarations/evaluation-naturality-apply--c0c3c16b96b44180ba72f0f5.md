# evaluation_naturality_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9655e9d1-27c7-ea96-efdd-baa55a4c4bcc",
  "kind": "lemma",
  "lexical_name": "evaluation_naturality_apply",
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
  "slug": "evaluation-naturality-apply--c0c3c16b96b44180ba72f0f5",
  "source": {
    "blob": "af5ed74befad2f7d73c685463cf97cf49d276fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 149,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant71e5d773cf8633b427c867ec31612f31aaa6f20e8e850a9742dc0fb18b1474ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0c3c16b96b44180ba72f0f5b0363b4d0cc06f80049cbfc3c3210b68bbf949a5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ResidueField/Variant71e5d773cf8633b427c867ec31612f31aaa6f20e8e850a9742dc0fb18b1474ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9655e9d1-27c7-ea96-efdd-baa55a4c4bcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma evaluation_naturality_apply {V : Opens Y} (x : (Opens.map f.base).obj V)
    (a : Y.presheaf.obj (op V)) :
    residueFieldMap f x.val (Y.evaluation ⟨f.base x, x.property⟩ a) =
      X.evaluation x (f.c.app (op V) a) := by
  simpa using! congrFun (congrArg (DFunLike.coe ∘ CommRingCat.Hom.hom) <|
    evaluation_naturality f x) a

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ResidueField/Variant71e5d773cf8633b427c867ec31612f31aaa6f20e8e850a9742dc0fb18b1474ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variant71e5d773cf8633b427c867ec31612f31aaa6f20e8e850a9742dc0fb18b1474ab.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5ed74befad2f7d73c685463cf97cf49d276fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
