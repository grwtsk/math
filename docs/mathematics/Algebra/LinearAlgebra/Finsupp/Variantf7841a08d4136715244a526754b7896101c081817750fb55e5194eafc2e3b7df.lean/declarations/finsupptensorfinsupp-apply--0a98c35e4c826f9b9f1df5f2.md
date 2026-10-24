# finsuppTensorFinsupp_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:360844e4-1383-b4f7-7a45-358d454b8ef6",
  "kind": "theorem",
  "lexical_name": "finsuppTensorFinsupp_apply",
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
  "slug": "finsupptensorfinsupp-apply--0a98c35e4c826f9b9f1df5f2",
  "source": {
    "blob": "8758ce3786bf07037f7d3cb64abd7734cd8c3304",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 226,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf7841a08d4136715244a526754b7896101c081817750fb55e5194eafc2e3b7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a98c35e4c826f9b9f1df5f2ba1ad0fe8f20f9bbeee5428367657122a90c0cdc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variantf7841a08d4136715244a526754b7896101c081817750fb55e5194eafc2e3b7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:360844e4-1383-b4f7-7a45-358d454b8ef6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsuppTensorFinsupp_apply (f : ι →₀ M) (g : κ →₀ N) (i : ι) (k : κ) :
    finsuppTensorFinsupp R S M N ι κ (f ⊗ₜ g) (i, k) = f i ⊗ₜ g k := by
  induction f using Finsupp.induction_linear with
  | zero => simp
  | add f₁ f₂ hf₁ hf₂ => simp [add_tmul, hf₁, hf₂]
  | single i' m =>
    induction g using Finsupp.induction_linear with
    | zero => simp
    | add g₁ g₂ hg₁ hg₂ => simp [tmul_add, hg₁, hg₂]
    | single k' n =>
      classical
      simp_rw [finsuppTensorFinsupp_single, Finsupp.single_apply, Prod.mk_inj, ite_and]
      split_ifs <;> simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variantf7841a08d4136715244a526754b7896101c081817750fb55e5194eafc2e3b7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf7841a08d4136715244a526754b7896101c081817750fb55e5194eafc2e3b7df.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8758ce3786bf07037f7d3cb64abd7734cd8c3304` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
