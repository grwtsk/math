# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b01556b55faf4911c828b5e2c821d8a532217bb61af78c6c0b81b12396220db",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3bc0d4c224c4212b4ba9d68c",
  "source": {
    "blob": "ba4fa02ce0007d897cf8f457ffe20a785d90961e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40c1cafd746a9b48cbd27ec361fa70d9104f8341b20ca540bffcde9c41622927.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bc0d4c224c4212b4ba9d68c6f4956bd7d481f7e456438822ea92769daf438cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40c1cafd746a9b48cbd27ec361fa70d9104f8341b20ca540bffcde9c41622927.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b01556b55faf4911c828b5e2c821d8a532217bb61af78c6c0b81b12396220db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Monoid α] [Semiring R] [MulSemiringAction α R] [IsScalarTower α R R] (c : RingCon R) :
    MulSemiringAction α c.Quotient :=
  { smul_one := fun _ => congr_arg toQuotient <| smul_one _
    smul_mul := fun _ => Quotient.ind₂' fun _ _ => congr_arg toQuotient <|
      MulSemiringAction.smul_mul _ _ _ }

end Algebraic

end Quotient

/-! ### Lattice structure

The API in this section is copied from `Mathlib/GroupTheory/Congruence.lean`
-/

section Lattice

variable [Add R] [Mul R]

/-- For congruence relations `c, d` on a type `M` with multiplication and addition, `c ≤ d` iff
`∀ x y ∈ M`, `x` is related to `y` by `d` if `x` is related to `y` by `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40c1cafd746a9b48cbd27ec361fa70d9104f8341b20ca540bffcde9c41622927.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant40c1cafd746a9b48cbd27ec361fa70d9104f8341b20ca540bffcde9c41622927.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4fa02ce0007d897cf8f457ffe20a785d90961e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
