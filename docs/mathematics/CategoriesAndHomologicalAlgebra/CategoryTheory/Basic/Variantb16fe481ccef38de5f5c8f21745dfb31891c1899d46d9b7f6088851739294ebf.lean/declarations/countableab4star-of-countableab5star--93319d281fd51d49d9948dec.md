# CountableAB4Star.of_countableAB5Star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61029139-1e54-b355-f3e4-2b109cf26e38",
  "kind": "lemma",
  "lexical_name": "CountableAB4Star.of_countableAB5Star",
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
  "slug": "countableab4star-of-countableab5star--93319d281fd51d49d9948dec",
  "source": {
    "blob": "ed722e750b12377e6011d387e904143190ddec12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 476,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93319d281fd51d49d9948dec0eae7389db8a015c58a2c0afc317ccde02262d2a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61029139-1e54-b355-f3e4-2b109cf26e38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CountableAB4Star.of_countableAB5Star [HasLimitsOfShape ℕᵒᵖ C] [HasExactLimitsOfShape ℕᵒᵖ C]
    [HasCountableProducts C] : CountableAB4Star C where
  ofShape J :=
    have : HasLimitsOfShape (Finset (Discrete J))ᵒᵖ C :=
      Functor.Initial.hasLimitsOfShape_of_initial
        (IsFiltered.sequentialFunctor (Finset (Discrete J))).op
    have := hasExactLimitsOfShape_of_initial C
      (IsFiltered.sequentialFunctor (Finset (Discrete J))).op
    hasExactLimitsOfShape_discrete_of_hasExactLimitsOfShape_finset_discrete_op _ _

end AB4StarOfAB5Star

/--
Checking exactness of colimits of shape `Discrete ℕ` and `Discrete J` for finite `J` is enough for
countable AB4.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantb16fe481ccef38de5f5c8f21745dfb31891c1899d46d9b7f6088851739294ebf.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed722e750b12377e6011d387e904143190ddec12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
