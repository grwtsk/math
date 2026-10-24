# isLimitEquivOfIsos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9afaf9d0fe17b04718657272d5f46d7aafa67eee9d534f3fdf3f0ddc0dd76fe7",
  "kind": "def",
  "lexical_name": "isLimitEquivOfIsos",
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
  "slug": "islimitequivofisos--034650a45b58e11d45979be6",
  "source": {
    "blob": "7bba9087fa05cdac0ba14d9e7ffbc1e577bb14a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 645,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:034650a45b58e11d45979be64693482c4c7fe5371f52e518cc66a610730ee25c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9afaf9d0fe17b04718657272d5f46d7aafa67eee9d534f3fdf3f0ddc0dd76fe7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 645–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitEquivOfIsos {I I' : MulticospanIndex J C} (c : Multifork I) (c' : Multifork I')
    (e : c.pt ≅ c'.pt) (el : ∀ i, I.left i ≅ I'.left i) (er : ∀ i, I.right i ≅ I'.right i)
    (hl : ∀ (i : J.R), I.fst i ≫ (er i).hom = (el (J.fst i)).hom ≫ I'.fst i := by cat_disch)
    (hr : ∀ (i : J.R), I.snd i ≫ (er i).hom = (el (J.snd i)).hom ≫ I'.snd i := by cat_disch)
    (he : ∀ (i : J.L), e.hom ≫ c'.ι i = c.ι i ≫ (el i).hom := by cat_disch) :
    IsLimit c ≃ IsLimit c' :=
  letI i : I.multicospan ≅ I'.multicospan :=
    WalkingMulticospan.functorExt el er hl hr
  IsLimit.equivOfNatIsoOfIso i _ _ (Multifork.ext e he)

variable (K)
variable {c : Fan I.left} (hc : IsLimit c) {d : Fan I.right} (hd : IsLimit d)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean#L645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bba9087fa05cdac0ba14d9e7ffbc1e577bb14a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
