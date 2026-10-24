# quasiIso_of_retractArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c34d39fe-0290-53cb-72b4-db27b1218ecd",
  "kind": "lemma",
  "lexical_name": "quasiIso_of_retractArrow",
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
  "slug": "quasiiso-of-retractarrow--5754cc9188ee45c6ca63fccd",
  "source": {
    "blob": "99dd8dc74b0430d6395aa960353961b8c0567478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 245,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5754cc9188ee45c6ca63fccdcc04fde40e15bc497c07b85eadd9e046df218e7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c34d39fe-0290-53cb-72b4-db27b1218ecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasiIso_of_retractArrow {f : K ⟶ L} {f' : K' ⟶ L'}
    (h : RetractArrow f f') [∀ i, K.HasHomology i] [∀ i, L.HasHomology i]
    [∀ i, K'.HasHomology i] [∀ i, L'.HasHomology i] [QuasiIso f'] :
    QuasiIso f where
  quasiIsoAt i := quasiIsoAt_of_retract h i

namespace HomologicalComplex

section PreservesHomology

variable {C₁ C₂ : Type*} [Category C₁] [Category C₂] [Preadditive C₁] [Preadditive C₂]
  {K L : HomologicalComplex C₁ c} (φ : K ⟶ L) (F : C₁ ⥤ C₂) [F.Additive]
  [F.PreservesHomology]

section

variable (i : ι) [K.HasHomology i] [L.HasHomology i]
  [((F.mapHomologicalComplex c).obj K).HasHomology i]
  [((F.mapHomologicalComplex c).obj L).HasHomology i]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Varianta794397a0403ca2cc1368f20ae18f7fd2445b32373f60587c3b6b36c1988d941.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99dd8dc74b0430d6395aa960353961b8c0567478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
