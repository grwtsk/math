# opcyclesToCycles_fac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:498d70ec-a960-a495-bd2a-79059aa7f99d",
  "kind": "lemma",
  "lexical_name": "opcyclesToCycles_fac",
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
  "slug": "opcyclestocycles-fac--ae27f8a9dba8b8460bef01b7",
  "source": {
    "blob": "47de1f79d113e776a175580bb351bda938896aa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequenceFour/Variante2625d2748746e92fd022133729d2fe16b97780b1f2739700232671ad12043d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae27f8a9dba8b8460bef01b77ea32f21e45b644d7a437e953d1d56229ab974a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequenceFour/Variante2625d2748746e92fd022133729d2fe16b97780b1f2739700232671ad12043d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:498d70ec-a960-a495-bd2a-79059aa7f99d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opcyclesToCycles_fac (hk : k ≤ n := by lia)
    [(S.sc hS k).HasRightHomology] [(S.sc hS (k + 1)).HasLeftHomology] :
    (S.sc hS k _).pOpcycles ≫ hS.opcyclesToCycles k ≫ (S.sc hS (k + 1) _).iCycles =
      S.map' (k + 1) (k + 2) :=
  hS.cokerToKer'_fac k hk _ _ (S.sc hS k _).opcyclesIsCokernel
    (S.sc hS (k + 1) _).cyclesIsKernel

end

end IsComplex

end HasZeroMorphisms

section Preadditive

variable {C : Type*} [Category C] [Preadditive C] {n : ℕ} {S : ComposableArrows C (n + 3)}

namespace IsComplex

variable (hS : S.IsComplex) (k : ℕ) (hk : k ≤ n)
  (cc : CokernelCofork (S.map' k (k + 1))) (kf : KernelFork (S.map' (k + 2) (k + 3)))
  (hcc : IsColimit cc) (hkf : IsLimit kf)

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequenceFour/Variante2625d2748746e92fd022133729d2fe16b97780b1f2739700232671ad12043d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequenceFour/Variante2625d2748746e92fd022133729d2fe16b97780b1f2739700232671ad12043d5.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47de1f79d113e776a175580bb351bda938896aa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
