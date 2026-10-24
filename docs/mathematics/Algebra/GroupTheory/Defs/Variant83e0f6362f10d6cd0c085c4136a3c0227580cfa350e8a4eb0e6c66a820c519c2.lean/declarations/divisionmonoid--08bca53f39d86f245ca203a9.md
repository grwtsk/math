# divisionMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bacb65e3d5ee579363d31b4ade1f696c19936673cdb42e02d22ddc87ef49df8",
  "kind": "instance",
  "lexical_name": "divisionMonoid",
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
  "slug": "divisionmonoid--08bca53f39d86f245ca203a9",
  "source": {
    "blob": "c4ebac264c734625202304d4f033e170762bf688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 351,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08bca53f39d86f245ca203a967c0d73568ea244c6bf5e33f9d01c0bf364c23ba",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bacb65e3d5ee579363d31b4ade1f696c19936673cdb42e02d22ddc87ef49df8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance divisionMonoid [DivisionMonoid α] : DivisionMonoid (WithZero α) :=
  { WithZero.divInvMonoid, WithZero.involutiveInv with
    mul_inv_rev := fun a b =>
      match a, b with
      | none, none => rfl
      | none, some b => rfl
      | some a, none => rfl
      | some a, some b => congr_arg some <| mul_inv_rev _ _,
    inv_eq_of_mul := fun a b ↦
      match a, b with
      | none, none => fun _ ↦ rfl
      | none, some b => fun _ ↦ by contradiction
      | some a, none => fun _ ↦ by contradiction
      | some a, some b => fun h ↦
        congr_arg some <| inv_eq_of_mul_eq_one_right <| Option.some_injective _ h }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant83e0f6362f10d6cd0c085c4136a3c0227580cfa350e8a4eb0e6c66a820c519c2.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4ebac264c734625202304d4f033e170762bf688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
