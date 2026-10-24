# productSlope_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4e9d13b-d11f-b3b2-eff2-dca60bc04e85",
  "kind": "lemma",
  "lexical_name": "productSlope_norm_le",
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
  "slug": "productslope-norm-le--aac94d9812e88f36afaa580c",
  "source": {
    "blob": "8b8c1570d8e3aaf419e33610d00a93d0be37161a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aac94d9812e88f36afaa580c83ce6d86caddc02a3b415ce247f5c711eca6aff1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4e9d13b-d11f-b3b2-eff2-dca60bc04e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma productSlope_norm_le (n : ℕ) {B : ℝ} {s : ℂ} (hB : 0 ≤ B)
    (hf : ∀ j < n, ‖factor j s‖ ≤ B) :
    ‖productSlope n s‖ ≤ (n : ℝ) * B ^ (n-1) := by
  revert hf
  induction n with
  | zero => intro hf; simp [productSlope]
  | succ n ih =>
    intro hf
    cases n with
    | zero => simp [productSlope, product]
    | succ n =>
      have hf' : ∀ j < n+1, ‖factor j s‖ ≤ B := fun j hj => hf j (by omega)
      have hd := ih hf'
      have hp := product_norm_le (n+1) hB hf'
      calc
        ‖productSlope (n+1+1) s‖ ≤
            ‖productSlope (n+1) s‖ * ‖factor (n+1) s‖ + ‖product (n+1) s‖ := by
          simpa only [productSlope, norm_mul] using norm_add_le
            (productSlope (n+1) s * factor (n+1) s) (product (n+1) s)
        _ ≤ ((n+1 : ℕ) : ℝ) * B ^ n * B + B ^ (n+1) := by
          exact add_le_add (mul_le_mul (by simpa using hd) (hf (n+1) (by omega))
            (norm_nonneg _) (by positivity)) hp
        _ = ((n+1+1 : ℕ) : ℝ) * B ^ ((n+1+1)-1) := by
          simp only [Nat.add_sub_cancel, pow_succ, Nat.cast_add, Nat.cast_one]
          ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8c1570d8e3aaf419e33610d00a93d0be37161a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
