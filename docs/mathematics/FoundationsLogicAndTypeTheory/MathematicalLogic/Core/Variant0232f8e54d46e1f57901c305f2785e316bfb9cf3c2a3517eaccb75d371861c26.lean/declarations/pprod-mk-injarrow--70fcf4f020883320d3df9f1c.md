# PProd.mk.injArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d85da9f5e642199938653002abf371d956a25b8c2c016c2b8dd3f3bf37bf91e3",
  "kind": "def",
  "lexical_name": "PProd.mk.injArrow",
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
  "slug": "pprod-mk-injarrow--70fcf4f020883320d3df9f1c",
  "source": {
    "blob": "c86701a91392da85363329d4be5b002aceef0f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70fcf4f020883320d3df9f1c8990013af2a801c2269ba6da0776430f7b0a28c5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d85da9f5e642199938653002abf371d956a25b8c2c016c2b8dd3f3bf37bf91e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PProd.mk.injArrow {α : Type u} {β : Type v} {x₁ : α} {y₁ : β} {x₂ : α} {y₂ : β} :
    (x₁, y₁) = (x₂, y₂) → ∀ ⦃P : Sort w⦄, (x₁ = x₂ → y₁ = y₂ → P) → P :=
  fun h₁ _ h₂ ↦ Prod.noConfusion h₁ h₂

#align sum Sum
#align sum.inl Sum.inl
#align sum.inr Sum.inr

#align psum PSum
#align psum.inl PSum.inl
#align psum.inr PSum.inr

#align or.intro_right Or.intro_rightₓ -- reorder implicits

#align sigma Sigma
#align sigma.fst Sigma.fst
#align sigma.snd Sigma.snd

#align psigma PSigma
#align psigma.fst PSigma.fst
#align psigma.snd PSigma.snd

#align bool Bool
#align bool.ff Bool.false
#align bool.tt Bool.true

#align subtype Subtype
#align subtype.val Subtype.val
#align subtype.property Subtype.property

#align decidable Decidable
#align decidable_pred DecidablePred
#align decidable_rel DecidableRel
#align decidable_eq DecidableEq

#align option Option

#align list List
#align list.nil List.nil
#align list.cons List.cons

#align nat Nat

-- attribute [pp_using_anonymous_constructor] Sigma PSigma Subtype PProd And

-- Generic 'has'-stripping
-- Note: we don't currently strip automatically for various reasons.
#align has_add Add
#align has_mul Mul
#align has_neg Neg
#align has_sub Sub
#align has_div Div
#align has_dvd Dvd
#align has_mod Mod
#align has_le LE
#align has_le.le LE.le
#align has_lt LT
#align has_lt.lt LT.lt
#align has_append Append

@[deprecated AndThen]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant0232f8e54d46e1f57901c305f2785e316bfb9cf3c2a3517eaccb75d371861c26.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c86701a91392da85363329d4be5b002aceef0f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
