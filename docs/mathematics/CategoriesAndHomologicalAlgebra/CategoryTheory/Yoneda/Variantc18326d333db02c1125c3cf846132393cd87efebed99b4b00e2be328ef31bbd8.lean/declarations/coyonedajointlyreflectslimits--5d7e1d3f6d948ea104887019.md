# coyonedaJointlyReflectsLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:350d486617750579f5d1c7cdf02a4564164d0102415f69138b066720556001e0",
  "kind": "def",
  "lexical_name": "coyonedaJointlyReflectsLimits",
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
  "slug": "coyonedajointlyreflectslimits--5d7e1d3f6d948ea104887019",
  "source": {
    "blob": "a2e553b6e94c1809a6a32295d667d2c5cf884791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 151,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantc18326d333db02c1125c3cf846132393cd87efebed99b4b00e2be328ef31bbd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d7e1d3f6d948ea104887019b8eba97e7ee261bd2802ff7af92a8d7e85f5b293",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantc18326d333db02c1125c3cf846132393cd87efebed99b4b00e2be328ef31bbd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:350d486617750579f5d1c7cdf02a4564164d0102415f69138b066720556001e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coyonedaJointlyReflectsLimits (F : J ⥤ C) (c : Cone F)
    (hc : ∀ X : Cᵒᵖ, IsLimit ((coyoneda.obj X).mapCone c)) : IsLimit c where
  lift s := (hc (op s.pt)).lift ((coyoneda.obj (op s.pt)).mapCone s) (𝟙 _)
  fac s j := by simpa using congr_hom ((hc (op s.pt)).fac
    ((coyoneda.obj (op s.pt)).mapCone s) j) (𝟙 s.pt)
  uniq s m hm := by
    apply (Types.isLimitEquivSections (hc (op s.pt))).injective
    ext j
    dsimp [Types.isLimitEquivSections, Types.sectionOfCone]
    have eq := congr_hom ((hc (op s.pt)).fac ((coyoneda.obj (op s.pt)).mapCone s) j) (𝟙 s.pt)
    cat_disch

/-- A cone is limit iff it is so after the application of `coyoneda.obj X` for all `X : Cᵒᵖ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantc18326d333db02c1125c3cf846132393cd87efebed99b4b00e2be328ef31bbd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantc18326d333db02c1125c3cf846132393cd87efebed99b4b00e2be328ef31bbd8.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2e553b6e94c1809a6a32295d667d2c5cf884791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
