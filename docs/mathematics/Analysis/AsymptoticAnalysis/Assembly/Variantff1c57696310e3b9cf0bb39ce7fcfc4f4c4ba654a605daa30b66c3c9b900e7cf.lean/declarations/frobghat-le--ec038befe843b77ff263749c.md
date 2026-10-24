# frobGhat_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:028640e1-1c17-4b5f-848f-951e51f3b442",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b6f85426-fe19-4891-22d3-28237ff2a89d",
  "kind": "theorem",
  "lexical_name": "frobGhat_le",
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
  "slug": "frobghat-le--ec038befe843b77ff263749c",
  "source": {
    "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 448,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec038befe843b77ff263749c7b33c36bb0983246d78d52bd23a410ce669dc7ef",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6f85426-fe19-4891-22d3-28237ff2a89d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobGhat_le {a L T ℓ₁ trG2 C calE N RN : ℝ} (ha : 0 < a) (hL : 0 < L) (hℓ₁ : 0 < ℓ₁)
    (hK : 0 ≤ 1 + C * calE)
    (htr2 : trG2 - T * L / (2 * Real.pi) * (ℓ₁ ^ 2 + L ^ 2 / 3)
              ≤ C * calE * (T * L / (2 * Real.pi) * (ℓ₁ ^ 2 + L ^ 2 / 3)))
    (hRvM : T * ℓ₁ / (2 * Real.pi) ≤ N + RN) :
    ((a * L)⁻¹) ^ 2 * trG2
      ≤ (1 / (L / ℓ₁) + (L / ℓ₁) / 3) * N
        + (1 / (L / ℓ₁) + (L / ℓ₁) / 3) * (((1 + C * calE) / a ^ 2 - 1) * N
            + (1 + C * calE) / a ^ 2 * RN) := by
  set M := T * L / (2 * Real.pi) * (ℓ₁ ^ 2 + L ^ 2 / 3) with hM
  set cl := 1 / (L / ℓ₁) + (L / ℓ₁) / 3 with hcl
  have hcl0 : 0 ≤ cl := by rw [hcl]; positivity
  have h1 : trG2 ≤ (1 + C * calE) * M := by linarith
  have h2 : ((a * L)⁻¹) ^ 2 * trG2 ≤ ((a * L)⁻¹) ^ 2 * ((1 + C * calE) * M) :=
    mul_le_mul_of_nonneg_left h1 (sq_nonneg _)
  have h3 : ((a * L)⁻¹) ^ 2 * ((1 + C * calE) * M)
      = (1 + C * calE) / a ^ 2 * cl * (T * ℓ₁ / (2 * Real.pi)) := by
    have := mainTr2_hat_identity (T := T) ha.ne' hL.ne' hℓ₁.ne'
    rw [← hM, ← hcl] at this
    calc ((a * L)⁻¹) ^ 2 * ((1 + C * calE) * M) = (1 + C * calE) * (((a * L)⁻¹) ^ 2 * M) := by ring
      _ = (1 + C * calE) * ((a ^ 2)⁻¹ * cl * (T * ℓ₁ / (2 * Real.pi))) := by rw [this]
      _ = _ := by ring
  have hKa : 0 ≤ (1 + C * calE) / a ^ 2 := by positivity
  have h4 : (1 + C * calE) / a ^ 2 * cl * (T * ℓ₁ / (2 * Real.pi))
      ≤ (1 + C * calE) / a ^ 2 * cl * (N + RN) :=
    mul_le_mul_of_nonneg_left hRvM (mul_nonneg hKa hcl0)
  calc ((a * L)⁻¹) ^ 2 * trG2 ≤ (1 + C * calE) / a ^ 2 * cl * (N + RN) := by linarith
    _ = cl * N + cl * (((1 + C * calE) / a ^ 2 - 1) * N + (1 + C * calE) / a ^ 2 * RN) := by ring

end TraceInputs

/-! ## Part E.  The asymptotic wrappers (the only place filters appear)

E1: the explicit error of Parts C–D is `o(N)` given the growth facts;  E2: `o(N)` error ⇒ `ε`-form;
E3: `λ → 1⁻`;  E4: dyadic summation `N₀*(T,2T) ⇒ N₀*(T)` (paper §6, end of proof of Thm A). -/

section Asymptotic
open Filter Asymptotics Topology

/-- E2. An `o(N)` error term yields the `ε`-form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
