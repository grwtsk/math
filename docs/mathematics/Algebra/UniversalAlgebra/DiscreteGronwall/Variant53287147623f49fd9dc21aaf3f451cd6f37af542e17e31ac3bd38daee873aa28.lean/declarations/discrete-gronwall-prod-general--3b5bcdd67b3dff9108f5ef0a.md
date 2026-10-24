# discrete_gronwall_prod_general

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "590ce4d5d3e628bfdda5d3a8c207d092e3a530dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53287147623f49fd9dc21aaf3f451cd6f37af542e17e31ac3bd38daee873aa28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e1e006d-c558-921e-891f-84883cabb072",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5a34fbb-73f0-6003-b254-47cdfed6d915",
  "kind": "theorem",
  "lexical_name": "discrete_gronwall_prod_general",
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
  "slug": "discrete-gronwall-prod-general--3b5bcdd67b3dff9108f5ef0a",
  "source": {
    "blob": "590ce4d5d3e628bfdda5d3a8c207d092e3a530dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 50,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DiscreteGronwall/Variant53287147623f49fd9dc21aaf3f451cd6f37af542e17e31ac3bd38daee873aa28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b5bcdd67b3dff9108f5ef0a9dda52865bd89a9c03cd04191a819a71d16ac013",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DiscreteGronwall/Variant53287147623f49fd9dc21aaf3f451cd6f37af542e17e31ac3bd38daee873aa28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5a34fbb-73f0-6003-b254-47cdfed6d915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrete_gronwall_prod_general {n₀ : ℕ} (hu : ∀ n ≥ n₀, u (n + 1) ≤ c n * u n + b n)
    (hc : ∀ n ≥ n₀, 0 ≤ c n) ⦃n : ℕ⦄ (hn : n₀ ≤ n) :
    u n ≤ u n₀ * ∏ i ∈ Ico n₀ n, c i +
      ∑ k ∈ Ico n₀ n, b k * ∏ i ∈ Ico (k + 1) n, c i := by
  induction n, hn using Nat.le_induction with
  | base => simp
  | succ k hk ih =>
    have hck : 0 ≤ c k := hc k hk
    have heq : c k * ∑ j ∈ Ico n₀ k, b j * ∏ i ∈ Ico (j + 1) k, c i + b k =
        ∑ j ∈ Ico n₀ (k + 1), b j * ∏ i ∈ Ico (j + 1) (k + 1), c i := by
      rw [sum_Ico_succ_top hk, mul_sum, Ico_self, prod_empty, mul_one]
      refine congr_arg (· + b k) (sum_congr rfl fun j hj ↦ ?_)
      rw [prod_Ico_succ_top (by have := mem_Ico.mp hj; omega)]; ring
    calc u (k + 1)
      _ ≤ c k * u k + b k := hu k hk
      _ ≤ c k * (u n₀ * ∏ i ∈ Ico n₀ k, c i +
            ∑ j ∈ Ico n₀ k, b j * ∏ i ∈ Ico (j + 1) k, c i) + b k := by gcongr
      _ = u n₀ * ∏ i ∈ Ico n₀ (k + 1), c i +
            ∑ j ∈ Ico n₀ (k + 1), b j * ∏ i ∈ Ico (j + 1) (k + 1), c i := by
          rw [← heq, ← prod_Ico_mul_eq_prod_Ico_add_one hk]; ring

end General

/-! ### Real-valued exponential form -/

variable {u b c : ℕ → ℝ}

/-- Discrete Grönwall inequality, exponential form: if `u (n+1) ≤ (1 + c n) * u n + b n` with
`b`, `c`, and `u n₀` non-negative, then `u n ≤ (u n₀ + ∑ b k) * exp (∑ c i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DiscreteGronwall/Variant53287147623f49fd9dc21aaf3f451cd6f37af542e17e31ac3bd38daee873aa28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DiscreteGronwall/Variant53287147623f49fd9dc21aaf3f451cd6f37af542e17e31ac3bd38daee873aa28.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590ce4d5d3e628bfdda5d3a8c207d092e3a530dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
