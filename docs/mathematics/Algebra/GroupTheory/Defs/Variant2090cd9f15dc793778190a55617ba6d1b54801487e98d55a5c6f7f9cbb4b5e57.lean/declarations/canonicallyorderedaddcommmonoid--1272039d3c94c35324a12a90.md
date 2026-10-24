# CanonicallyOrderedAddCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94660a5a3b0f6871a053a753b640c86cd81d01023e85eff53ead529fdcfc3604",
  "kind": "structure",
  "lexical_name": "CanonicallyOrderedAddCommMonoid",
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
  "slug": "canonicallyorderedaddcommmonoid--1272039d3c94c35324a12a90",
  "source": {
    "blob": "8510df860c12e3dea6e2708c256450ec7885355e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 56,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1272039d3c94c35324a12a90b085316f4ec214c24da3def0cc747d7696be6019",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94660a5a3b0f6871a053a753b640c86cd81d01023e85eff53ead529fdcfc3604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CanonicallyOrderedAddCommMonoid (α : Type*) extends
    OrderedAddCommMonoid α, OrderBot α where
  /-- For `a ≤ b`, there is a `c` so `b = a + c`. -/
  protected exists_add_of_le : ∀ {a b : α}, a ≤ b → ∃ c, b = a + c
  /-- For any `a` and `b`, `a ≤ a + b` -/
  protected le_self_add : ∀ a b : α, a ≤ a + b

set_option linter.deprecated false in
set_option linter.existingAttributeWarning false in
/-- A canonically ordered monoid is an ordered commutative monoid
  in which the ordering coincides with the divisibility relation,
  which is to say, `a ≤ b` iff there exists `c` with `b = a * c`.
  Examples seem rare; it seems more likely that the `OrderDual`
  of a naturally-occurring lattice satisfies this than the lattice
  itself (for example, dual of the lattice of ideals of a PID or
  Dedekind domain satisfy this; collections of all things ≤ 1 seem to
  be more natural that collections of all things ≥ 1).
-/
@[to_additive,
  deprecated "Use `[OrderedCommMonoid α] [CanonicallyOrderedMul α]` instead."
  (since := "2025-01-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant2090cd9f15dc793778190a55617ba6d1b54801487e98d55a5c6f7f9cbb4b5e57.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8510df860c12e3dea6e2708c256450ec7885355e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
