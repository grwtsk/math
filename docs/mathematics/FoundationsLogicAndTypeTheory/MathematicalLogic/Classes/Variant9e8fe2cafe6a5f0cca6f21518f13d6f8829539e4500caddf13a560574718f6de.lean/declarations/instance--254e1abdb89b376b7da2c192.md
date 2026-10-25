# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ed9d9fc26fd2a2a071301178ac722857293124276b6fe0fd2572fb2e7be522d",
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
  "slug": "instance--254e1abdb89b376b7da2c192",
  "source": {
    "blob": "b7fc8f8b560dfe6653aac8f50d2076274c1aab3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:254e1abdb89b376b7da2c19245bbbc5faa142b3523e66f5130d5f711065eb699",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ed9d9fc26fd2a2a071301178ac722857293124276b6fe0fd2572fb2e7be522d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {op} [IsIdempotent α op] : Lean.IsIdempotent op where
  idempotent := IsIdempotent.idempotent

-- class IsLeftDistrib (α : Type u) (op₁ : α → α → α) (op₂ : outParam <| α → α → α) : Prop where
--   left_distrib : ∀ a b c, op₁ a (op₂ b c) = op₂ (op₁ a b) (op₁ a c)
#noalign is_left_distrib -- IsLeftDistrib

-- class IsRightDistrib (α : Type u) (op₁ : α → α → α) (op₂ : outParam <| α → α → α) : Prop where
--   right_distrib : ∀ a b c, op₁ (op₂ a b) c = op₂ (op₁ a c) (op₁ b c)
#noalign is_right_distrib -- IsRightDistrib

-- class IsLeftInv (α : Type u) (op : α → α → α) (inv : outParam <| α → α) (o : outParam α) :
--     Prop where
--   left_inv : ∀ a, op (inv a) a = o
#noalign is_left_inv -- IsLeftInv

-- class IsRightInv (α : Type u) (op : α → α → α) (inv : outParam <| α → α) (o : outParam α) :
--     Prop where
--   right_inv : ∀ a, op a (inv a) = o
#noalign is_right_inv -- IsRightInv

-- class IsCondLeftInv (α : Type u) (op : α → α → α) (inv : outParam <| α → α) (o : outParam α)
--     (p : outParam <| α → Prop) : Prop where
--   left_inv : ∀ a, p a → op (inv a) a = o
#noalign is_cond_left_inv -- IsCondLeftInv

-- class IsCondRightInv (α : Type u) (op : α → α → α) (inv : outParam <| α → α) (o : outParam α)
--     (p : outParam <| α → Prop) : Prop where
--   right_inv : ∀ a, p a → op a (inv a) = o
#noalign is_cond_right_inv -- IsCondRightInv

-- class IsDistinct (α : Type u) (a : α) (b : α) : Prop where
--   distinct : a ≠ b
#noalign is_distinct -- IsDistinct

/-
-- The following type class doesn't seem very useful, a regular simp lemma should work for this.
class is_inv (α : Type u) (β : Type v) (f : α → β) (g : out β → α) : Prop :=
(inv : ∀ a, g (f a) = a)

-- The following one can also be handled using a regular simp lemma
class is_idempotent (α : Type u) (f : α → α) : Prop :=
(idempotent : ∀ a, f (f a) = f a)
-/

/-- `IsIrrefl X r` means the binary relation `r` on `X` is irreflexive (that is, `r x x` never
holds). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant9e8fe2cafe6a5f0cca6f21518f13d6f8829539e4500caddf13a560574718f6de.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7fc8f8b560dfe6653aac8f50d2076274c1aab3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
