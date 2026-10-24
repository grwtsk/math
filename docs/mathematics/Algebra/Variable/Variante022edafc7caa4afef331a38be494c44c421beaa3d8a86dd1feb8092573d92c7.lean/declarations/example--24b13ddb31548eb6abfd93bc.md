# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67d182cdf4e138847d34acd5f224cd309a731d55b6759664f75a57f7eea14d95",
  "kind": "example",
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
  "slug": "example--24b13ddb31548eb6abfd93bc",
  "source": {
    "blob": "5d0534abce74446e5a85f07844dab1d234d868fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 128,
    "path": "GRWTSK/Algebra/Variable/Variante022edafc7caa4afef331a38be494c44c421beaa3d8a86dd1feb8092573d92c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:24b13ddb31548eb6abfd93bcc773290bf0fc8c1f4703aee5c58c9876be5d8362",
  "verification": {
    "reference": "docs/verification/Algebra/Variable/Variante022edafc7caa4afef331a38be494c44c421beaa3d8a86dd1feb8092573d92c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67d182cdf4e138847d34acd5f224cd309a731d55b6759664f75a57f7eea14d95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ∀ i, AddCommMonoid (f i) := inferInstance
end

section
/--
warning: Instance argument can be inferred from earlier arguments.
f : ℕ → Type
inst✝ : (i : ℕ) → AddCommMonoid (f i)
⊢ (i : ℕ) → Module ℕ (f i)
---
info: Try this: variable? (f : Nat → Type) [∀ i, Module Nat (f i)] => (f : Nat → Type) [(i : ℕ) → AddCommMonoid (f i)]
-/
#guard_msgs in
variable? (f : Nat → Type) [∀ i, Module Nat (f i)]
-- Warning since [(i : ℕ) → AddCommMonoid (f i)] is sufficient
end

section
/-- info: Try this: variable? [Algebra k V] => [CommSemiring k] [Semiring V] [Algebra k V] -/
#guard_msgs in
variable? [Algebra k V]
end

section
-- Checking that `Algebra` doesn't introduce its own `CommSemiring k`.
/-- info: Try this: variable? [Field k] [Algebra k A] => [Field k] [Semiring A] [Algebra k A] -/
#guard_msgs in
variable? [Field k] [Algebra k A]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Variable/Variante022edafc7caa4afef331a38be494c44c421beaa3d8a86dd1feb8092573d92c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Variable/Variante022edafc7caa4afef331a38be494c44c421beaa3d8a86dd1feb8092573d92c7.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0534abce74446e5a85f07844dab1d234d868fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
