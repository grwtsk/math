# rlp_eq_of_le_rlp_of_hasFactorization_of_isStableUnderRetracts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a5ca49b-55af-8d0f-6a54-719b76ad56b2",
  "kind": "lemma",
  "lexical_name": "rlp_eq_of_le_rlp_of_hasFactorization_of_isStableUnderRetracts",
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
  "slug": "rlp-eq-of-le-rlp-of-hasfactorization-of-isstableunderretracts--c057a4880c1691b55131d4c3",
  "source": {
    "blob": "544842d561a5e5827f8c21e9b80ae1c182cfcf1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c057a4880c1691b55131d4c3dc45d9a99bd7923c62fa5f6e2a028f1dd2661508",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a5ca49b-55af-8d0f-6a54-719b76ad56b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rlp_eq_of_le_rlp_of_hasFactorization_of_isStableUnderRetracts
    [HasFactorization W₁ W₂] [W₂.IsStableUnderRetracts] (h₂ : W₂ ≤ W₁.rlp) :
    W₁.rlp = W₂ :=
  le_antisymm (fun X Y p hp ↦ by
    have h := factorizationData W₁ W₂ p
    have := hp _ h.hi
    simpa using of_retract (RetractArrow.ofRightLiftingProperty h.fac) h.hp) h₂

end MorphismProperty

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RetractArgument/Variant6e1a802869eb74abaeb8304ad093fdbdddd6e19754deab6288fed8bbbaa084b4.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `544842d561a5e5827f8c21e9b80ae1c182cfcf1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
