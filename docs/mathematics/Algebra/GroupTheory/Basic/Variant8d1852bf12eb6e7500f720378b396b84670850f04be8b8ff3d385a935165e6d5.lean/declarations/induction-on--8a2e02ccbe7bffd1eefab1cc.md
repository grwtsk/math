# induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec93fa8a-e682-50df-4bec-34bb5d360e8e",
  "kind": "theorem",
  "lexical_name": "induction_on",
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
  "slug": "induction-on--8a2e02ccbe7bffd1eefab1cc",
  "source": {
    "blob": "89b6a0a71b0943a43266b42849e9d28bef10283b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 212,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a2e02ccbe7bffd1eefab1cc40670710cb0bb27b4ab71c74fa3708cf21ce4ca4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec93fa8a-e682-50df-4bec-34bb5d360e8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction_on {C : M ∗ N → Prop} (m : M ∗ N)
    (inl : ∀ m, C (inl m)) (inr : ∀ n, C (inr n)) (mul : ∀ x y, C x → C y → C (x * y)) : C m :=
  induction_on' m (by simpa using inl 1) (fun _ _ ↦ mul _ _ (inl _)) fun _ _ ↦ mul _ _ (inr _)

/-- Lift a monoid homomorphism `FreeMonoid (M ⊕ N) →* P` satisfying additional properties to
`M ∗ N →* P`. In many cases, `Coprod.lift` is more convenient.

Compared to `Coprod.lift`,
this definition allows a user to provide a custom computational behavior.
Also, it only needs `MulOneclass` assumptions while `Coprod.lift` needs a `Monoid` structure.
-/
@[to_additive "Lift an additive monoid homomorphism `FreeAddMonoid (M ⊕ N) →+ P` satisfying
additional properties to `AddMonoid.Coprod M N →+ P`.

Compared to `AddMonoid.Coprod.lift`,
this definition allows a user to provide a custom computational behavior.
Also, it only needs `AddZeroclass` assumptions
while `AddMonoid.Coprod.lift` needs an `AddMonoid` structure. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b6a0a71b0943a43266b42849e9d28bef10283b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
