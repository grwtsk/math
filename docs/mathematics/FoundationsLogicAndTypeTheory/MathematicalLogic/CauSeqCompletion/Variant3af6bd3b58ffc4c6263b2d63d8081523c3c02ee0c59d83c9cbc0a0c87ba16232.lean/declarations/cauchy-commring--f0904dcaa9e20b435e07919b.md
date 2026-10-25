# Cauchy.commRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a26010c3d182e532b71bd14fd1b8efa944cb0c0cd2196f07471fcc63a576d6a",
  "kind": "instance",
  "lexical_name": "Cauchy.commRing",
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
  "slug": "cauchy-commring--f0904dcaa9e20b435e07919b",
  "source": {
    "blob": "ce4f03fcb51b1db8cbf63f2eae8a674b17f33bdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 201,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0904dcaa9e20b435e07919b2bab80ca341e1809467c16cbc161f456a7920f5a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a26010c3d182e532b71bd14fd1b8efa944cb0c0cd2196f07471fcc63a576d6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Cauchy.commRing : CommRing (Cauchy abv) :=
  Function.Surjective.commRing mk (surjective_quotient_mk _) zero_def.symm one_def.symm
    (fun _ _ => (mk_add _ _).symm) (fun _ _ => (mk_mul _ _).symm) (fun _ => (mk_neg _).symm)
    (fun _ _ => (mk_sub _ _).symm) (fun _ _ => (mk_smul _ _).symm) (fun _ _ => (mk_smul _ _).symm)
    (fun _ _ => (mk_pow _ _).symm) (fun _ => rfl) fun _ => rfl

end

open Classical

section

variable {α : Type*} [LinearOrderedField α]

variable {β : Type*} [DivisionRing β] {abv : β → α} [IsAbsoluteValue abv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CauSeqCompletion/Variant3af6bd3b58ffc4c6263b2d63d8081523c3c02ee0c59d83c9cbc0a0c87ba16232.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4f03fcb51b1db8cbf63f2eae8a674b17f33bdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
