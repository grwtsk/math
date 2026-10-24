# compUniqFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01b2833ef4f83874d33a83599d85d27faff47472dd6f6998d7a9caa5d12d7dde",
  "kind": "def",
  "lexical_name": "compUniqFunctor",
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
  "slug": "compuniqfunctor--8a17a468ba12a90e41e18f1c",
  "source": {
    "blob": "acf2bade256672a3aea8912bfb9343557234ad43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 441,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a17a468ba12a90e41e18f1c4bee44fd8f134b682c6508b627677632ef692997",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01b2833ef4f83874d33a83599d85d27faff47472dd6f6998d7a9caa5d12d7dde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compUniqFunctor : L₁ ⋙ (uniq L₁ L₂ W').functor ≅ L₂ :=
  calc
    L₁ ⋙ (uniq L₁ L₂ W').functor ≅ (L₁ ⋙ (equivalenceFromModel L₁ W').inverse) ⋙
      (equivalenceFromModel L₂ W').functor := (Functor.associator _ _ _).symm
    _ ≅ W'.Q ⋙ (equivalenceFromModel L₂ W').functor :=
      isoWhiskerRight (compEquivalenceFromModelInverseIso L₁ W') _
    _ ≅ L₂ := qCompEquivalenceFromModelFunctorIso L₂ W'

/-- The inverse functor of equivalence of localized categories given by `Localization.uniq` is
compatible with the localization functors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantb66438632ed3399a8eace0f69537e6cfce78550fdcbc946a092019e95af21c03.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acf2bade256672a3aea8912bfb9343557234ad43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
