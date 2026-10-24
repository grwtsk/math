# Field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2572cf6df1e883f34a98a0d48cb84db695f228cfaa8e3c9574dca9378a4058c",
  "kind": "class",
  "lexical_name": "Field",
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
  "slug": "field--b18abe65e8ac5508113dcaa8",
  "source": {
    "blob": "bbc7d72f07939c1886213baa103c24a3f51ab333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 23,
    "path": "GRWTSK/Algebra/Field/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b18abe65e8ac5508113dcaa878f66dfd52b3897839fdc81169e83f00f8d8cfad",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2572cf6df1e883f34a98a0d48cb84db695f228cfaa8e3c9574dca9378a4058c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Field (α : Type u) extends CommRing α, Inv α, Div α where
  /-- An exponentiation operator. -/
  [zpow : HPow α Int α]
  /-- Division is multiplication by the inverse. -/
  div_eq_mul_inv : ∀ a b : α, a / b = a * b⁻¹
  /-- Zero is not equal to one: fields are non trivial.-/
  zero_ne_one : (0 : α) ≠ 1
  /-- The inverse of zero is zero. This is a "junk value" convention. -/
  inv_zero : (0 : α)⁻¹ = 0
  /-- The inverse of a non-zero element is a right inverse. -/
  mul_inv_cancel : ∀ {a : α}, a ≠ 0 → a * a⁻¹ = 1
  /-- The zeroth power of any element is one. -/
  zpow_zero : ∀ a : α, a ^ (0 : Int) = 1
  /-- The (n+1)-st power of any element is the element multiplied by the n-th power. -/
  zpow_succ : ∀ (a : α) (n : Nat), a ^ (n + 1 : Int) = a ^ (n : Int) * a
  /-- Raising to a negative power is the inverse of raising to the positive power. -/
  zpow_neg : ∀ (a : α) (n : Int), a ^ (-n) = (a ^ n)⁻¹

attribute [implicit_reducible] Field.zpow
attribute [instance 100] Field.toInv Field.toDiv Field.zpow

namespace Field

variable [Field α] {a : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FieldTheory/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Field/Variant92b02c097133ffba5508a1b9c3243f29c0eceb851917d12118d4ac38916d8d91.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbc7d72f07939c1886213baa103c24a3f51ab333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
