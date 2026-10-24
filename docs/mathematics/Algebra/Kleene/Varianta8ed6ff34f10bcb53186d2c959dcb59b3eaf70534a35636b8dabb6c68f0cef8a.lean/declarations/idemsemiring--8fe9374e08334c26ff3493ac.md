# idemSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da2d24150c0f5cf41e1b9fedb11fc14f3e7bc55dc23b8f0a5684537c667f4a63",
  "kind": "abbrev",
  "lexical_name": "idemSemiring",
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
  "slug": "idemsemiring--8fe9374e08334c26ff3493ac",
  "source": {
    "blob": "9abfc687e6ad4f30a7dd7aeadb1176278c77df58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 331,
    "path": "GRWTSK/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fe9374e08334c26ff3493ac59b882746757d31d11ef4f5e39404fced9e2784c",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da2d24150c0f5cf41e1b9fedb11fc14f3e7bc55dc23b8f0a5684537c667f4a63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev idemSemiring [IdemSemiring α] [LE β] [LT β] [Zero β] [One β]
    [Add β] [Mul β] [Pow β ℕ] [SMul ℕ β] [NatCast β] [Max β] [Bot β] (f : β → α)
    (hf : Injective f) (le : ∀ {x y}, f x ≤ f y ↔ x ≤ y) (lt : ∀ {x y}, f x < f y ↔ x < y)
    (zero : f 0 = 0) (one : f 1 = 1)
    (add : ∀ x y, f (x + y) = f x + f y) (mul : ∀ x y, f (x * y) = f x * f y)
    (nsmul : ∀ (n : ℕ) (x), f (n • x) = n • f x) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n)
    (natCast : ∀ n : ℕ, f n = n) (sup : ∀ a b, f (a ⊔ b) = f a ⊔ f b) (bot : f ⊥ = ⊥) :
    IdemSemiring β where
  __ := hf.semiring f zero one add mul nsmul npow natCast
  __ := hf.semilatticeSup f le lt sup
  add_eq_sup a b := hf <| by rw [sup, add, add_eq_sup]
  bot_le a := le.1 <| bot.trans_le bot_le

-- See note [reducible non-instances]
/-- Pullback an `IdemCommSemiring` instance along an injective function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Varianta8ed6ff34f10bcb53186d2c959dcb59b3eaf70534a35636b8dabb6c68f0cef8a.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9abfc687e6ad4f30a7dd7aeadb1176278c77df58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
