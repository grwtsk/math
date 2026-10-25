# lie_eq_self_of_isAtom_of_nonabelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09aefe8d-e44c-f56f-be9b-d1fe3b5b9591",
  "kind": "lemma",
  "lexical_name": "lie_eq_self_of_isAtom_of_nonabelian",
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
  "slug": "lie-eq-self-of-isatom-of-nonabelian--3aefe0ecde7a196a0d2159e4",
  "source": {
    "blob": "2f80d97203b5dee61a6e48759746642c5befc84d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 376,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aefe0ecde7a196a0d2159e423de7a58e8f237c67a1639b0b2268998f4f05043",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09aefe8d-e44c-f56f-be9b-d1fe3b5b9591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lie_eq_self_of_isAtom_of_nonabelian {R L : Type*} [CommRing R] [LieRing L] [LieAlgebra R L]
    (I : LieIdeal R L) (hI : IsAtom I) (h : ¬IsLieAbelian I) :
    ⁅I, I⁆ = I :=
  lie_eq_self_of_isAtom_of_ne_bot hI <| not_imp_not.mpr (lie_abelian_iff_lie_self_eq_bot I).mpr h

end IdealOperations

section TrivialLieModule

set_option linter.unusedVariables false in
/-- A type synonym for an `R`-module to have a trivial Lie module structure. -/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Abelian/Variantbb2112fe4f4feb0f4bc658340d7b0b905fe1d883cf21fe4efd6f7b2e87167192.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f80d97203b5dee61a6e48759746642c5befc84d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
