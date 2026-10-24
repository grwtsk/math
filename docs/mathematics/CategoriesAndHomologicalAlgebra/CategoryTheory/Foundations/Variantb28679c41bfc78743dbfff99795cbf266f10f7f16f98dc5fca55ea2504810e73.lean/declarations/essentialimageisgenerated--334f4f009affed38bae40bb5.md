# essentialImageIsGenerated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4bdc7e46165c48ced511da74bc938f394a98e2c03a4c693688760d0c9337383",
  "kind": "def",
  "lexical_name": "essentialImageIsGenerated",
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
  "slug": "essentialimageisgenerated--334f4f009affed38bae40bb5",
  "source": {
    "blob": "284e94dab928815b245552332f7b69466adcba8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variantb28679c41bfc78743dbfff99795cbf266f10f7f16f98dc5fca55ea2504810e73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:334f4f009affed38bae40bb5008e911dda1568b23719dc579d48a650772b4e87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variantb28679c41bfc78743dbfff99795cbf266f10f7f16f98dc5fca55ea2504810e73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4bdc7e46165c48ced511da74bc938f394a98e2c03a4c693688760d0c9337383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def essentialImageIsGenerated
    {C D : CategoryLike.{uObj, uHom}}
    (F : FunctorLike C D)
    (epiC : EpiClass C)
    (epiD : EpiClass D)
    (B : GeneratorBridge F)
    (hSource : SourceGenerated B epiC)
    (hPreserves : PreservesEpis F epiC epiD) :
    ∀ Y : D.Obj,
      EssentialImage F Y →
      AlgebraicallyGenerated B epiD Y := by
  intro Y hImage
  rcases hImage with ⟨X, hIso⟩
  rcases hIso with ⟨e⟩
  rcases hSource X with ⟨i, q, hq⟩
  refine
    ⟨i,
      D.comp
        (D.comp (B.comparison i).inv (F.map q))
        e.hom,
      ?_⟩
  exact epiD.comp
    (epiD.comp
      (epiD.isoInv (B.comparison i))
      (hPreserves q hq))
    (epiD.isoHom e)

/-- Pointwise characterization of the essential image by generators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variantb28679c41bfc78743dbfff99795cbf266f10f7f16f98dc5fca55ea2504810e73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Foundations/Variantb28679c41bfc78743dbfff99795cbf266f10f7f16f98dc5fca55ea2504810e73.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `284e94dab928815b245552332f7b69466adcba8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
