# isColimitCoforkOfCokernelCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5481d9060a6bf76b471dd43ee62b4da1b752277e07a45b19b52777bbd90fb8f7",
  "kind": "def",
  "lexical_name": "isColimitCoforkOfCokernelCofork",
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
  "slug": "iscolimitcoforkofcokernelcofork--c74a662f370d40a41e92997c",
  "source": {
    "blob": "31544e809ec627b1334192794611d5e87634db6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 393,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd712a932bf7fd6fd3b6f2b8748068c289f3b0c8131f3254317db0fce3b7abaa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c74a662f370d40a41e92997ce57e7dca182897692bf3881872a76a08331ce3e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd712a932bf7fd6fd3b6f2b8748068c289f3b0c8131f3254317db0fce3b7abaa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5481d9060a6bf76b471dd43ee62b4da1b752277e07a45b19b52777bbd90fb8f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoforkOfCokernelCofork {c : CokernelCofork (f - g)} (i : IsColimit c) :
    IsColimit (coforkOfCokernelCofork c) :=
  Cofork.IsColimit.mk' _ fun s =>
    ⟨i.desc (cokernelCoforkOfCofork s), i.fac _ _, fun h => by
      apply Cofork.IsColimit.hom_ext i; aesop_cat⟩
#align category_theory.preadditive.is_colimit_cofork_of_cokernel_cofork CategoryTheory.Preadditive.isColimitCoforkOfCokernelCofork

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd712a932bf7fd6fd3b6f2b8748068c289f3b0c8131f3254317db0fce3b7abaa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantcd712a932bf7fd6fd3b6f2b8748068c289f3b0c8131f3254317db0fce3b7abaa.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31544e809ec627b1334192794611d5e87634db6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
