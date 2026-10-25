# boolProdNatEquivNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1db8c7230dd9c09dd9403b1b4cf595cb3473a3763f6c934d5ac26f2eab50cdd",
  "kind": "def",
  "lexical_name": "boolProdNatEquivNat",
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
  "slug": "boolprodnatequivnat--0568b993d29d68161b35ca74",
  "source": {
    "blob": "f9e0f1808184052bc7eca87ba8100a60d163d6f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0568b993d29d68161b35ca74a05b47fab4504ad4a77355fedb874704ae23e301",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1db8c7230dd9c09dd9403b1b4cf595cb3473a3763f6c934d5ac26f2eab50cdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boolProdNatEquivNat : Bool × ℕ ≃ ℕ where
  toFun := uncurry bit
  invFun := boddDiv2
  left_inv := fun ⟨b, n⟩ => by simp only [bodd_bit, div2_bit, uncurry_apply_pair, boddDiv2_eq]
  right_inv n := by simp only [bit_decomp, boddDiv2_eq, uncurry_apply_pair]

/-- An equivalence between `ℕ ⊕ ℕ` and `ℕ`, by mapping `(Sum.inl x)` to `2 * x` and `(Sum.inr x)` to
`2 * x + 1`.
-/
@[simps! symm_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Nat/Variantbe77ada7ad3faa0296ce3701badd47a5c0d220b5bfadbbe429068b367165e472.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9e0f1808184052bc7eca87ba8100a60d163d6f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
