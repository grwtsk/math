# domCoprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45fb34c9999414827430a9fefd56c2739ceb903730c2c1188d9100915dfa1c0c",
  "kind": "def",
  "lexical_name": "domCoprod",
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
  "slug": "domcoprod--f96ecd49dff3f5957b5f8291",
  "source": {
    "blob": "ed067faf3ed1219692989e2beb4bdf71b6337ec6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f96ecd49dff3f5957b5f829151f78ab6f9499020130978bd871358edb8eea775",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45fb34c9999414827430a9fefd56c2739ceb903730c2c1188d9100915dfa1c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def domCoprod (a : MultilinearMap R (fun _ : ι₁ => N) N₁)
    (b : MultilinearMap R (fun _ : ι₂ => N) N₂) :
    MultilinearMap R (fun _ : Sum ι₁ ι₂ => N) (N₁ ⊗[R] N₂) where
  toFun v := (a fun i => v (Sum.inl i)) ⊗ₜ b fun i => v (Sum.inr i)
  map_add' _ i p q := by
    letI := (@Sum.inl_injective ι₁ ι₂).decidableEq
    letI := (@Sum.inr_injective ι₁ ι₂).decidableEq
    cases i <;> simp [TensorProduct.add_tmul, TensorProduct.tmul_add]
  map_smul' _ i c p := by
    letI := (@Sum.inl_injective ι₁ ι₂).decidableEq
    letI := (@Sum.inr_injective ι₁ ι₂).decidableEq
    cases i <;> simp [TensorProduct.smul_tmul', TensorProduct.tmul_smul]
#align multilinear_map.dom_coprod MultilinearMap.domCoprod

/-- A more bundled version of `MultilinearMap.domCoprod` that maps
`((ι₁ → N) → N₁) ⊗ ((ι₂ → N) → N₂)` to `(ι₁ ⊕ ι₂ → N) → N₁ ⊗ N₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant608b3c917177f9cb79d772972afa82f609eafcfa82cfb3e6943fb7c1788adceb.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed067faf3ed1219692989e2beb4bdf71b6337ec6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
