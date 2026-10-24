# pluennecke_ruzsa_inequality_pow_div_pow_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18a88f10-bc23-9af6-f99f-8590521023c2",
  "kind": "theorem",
  "lexical_name": "pluennecke_ruzsa_inequality_pow_div_pow_mul",
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
  "slug": "pluennecke-ruzsa-inequality-pow-div-pow-mul--077014085c246126414a2e1f",
  "source": {
    "blob": "9287c2dd07ecfe8a770ebfb7b40a6c06d4102111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 238,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:077014085c246126414a2e1ffdb73f525479d5a1423a3e23289dafc28769f735",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18a88f10-bc23-9af6-f99f-8590521023c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pluennecke_ruzsa_inequality_pow_div_pow_mul (hA : A.Nonempty) (B : Finset G) (m n : ℕ) :
    #(B ^ m / B ^ n) ≤ (#(A * B) / #A : ℚ≥0) ^ (m + n) * #A := by
  have hA' : A ∈ A.powerset.erase ∅ := mem_erase_of_ne_of_mem hA.ne_empty (mem_powerset_self _)
  obtain ⟨C, hC, hCmin⟩ :=
    exists_min_image (A.powerset.erase ∅) (fun C ↦ #(C * B) / #C : _ → ℚ≥0) ⟨A, hA'⟩
  rw [mem_erase, mem_powerset, ← nonempty_iff_ne_empty] at hC
  obtain ⟨hC, hCA⟩ := hC
  refine le_of_mul_le_mul_right ?_ (by positivity : (0 : ℚ≥0) < #C)
  calc
    (#(B ^ m / B ^ n) * #C : ℚ≥0)
      ≤ #(B ^ m * C) * #(B ^ n * C) := mod_cast ruzsa_triangle_inequality_div_mul_mul ..
    _ = #(C * B ^ m) * #(C * B ^ n) := by simp_rw [mul_comm]
    _ ≤ ((#(C * B) / #C) ^ m * #C) * ((#(C * B) / #C : ℚ≥0) ^ n * #C) := by
      gcongr <;> exact card_mul_pow_le (mul_aux hC hCA hCmin) _
    _ = (#(C * B) / #C) ^ (m + n) * #C * #C := by ring
    _ ≤ (#(A * B) / #A) ^ (m + n) * #A * #C := by gcongr (?_ ^ _) * #?_ * _; exact hCmin _ hA'

/-- The **Plünnecke-Ruzsa inequality**. Division version. -/
@[to_additive "The **Plünnecke-Ruzsa inequality**. Subtraction version."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9287c2dd07ecfe8a770ebfb7b40a6c06d4102111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
