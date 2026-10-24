# integer_sign_implies_all_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8ba76b4-fa82-7815-e9ed-e055d04b0d71",
  "kind": "theorem",
  "lexical_name": "integer_sign_implies_all_real",
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
  "slug": "integer-sign-implies-all-real--3351407493c8ff5ba6611e85",
  "source": {
    "blob": "ae2ffd7eb23d3bfbc6f676e3d3059654d4c8ade8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AccordionConsumer/Variant0023caa977abeefec2f9ecca48efbbce302d65040ba986a7647456e769816e0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3351407493c8ff5ba6611e8553b73a8ce850475435380b5977ae86a81d6dfb05",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AccordionConsumer/Variant0023caa977abeefec2f9ecca48efbbce302d65040ba986a7647456e769816e0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8ba76b4-fa82-7815-e9ed-e055d04b0d71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer_sign_implies_all_real {N : ℕ} (hN : 2 ≤ N)
    (hint : ∀ n : ℕ, N ≤ n → ordinaryPrimePrimitive n ≤ 0) :
    OrdinaryPrimeEventualSignSupplier := by
  refine ⟨N, by exact_mod_cast hN, ?_⟩
  intro x hx
  have hNx : N ≤ ⌊x⌋₊ := Nat.le_floor hx
  have hx0 : 0 ≤ x := (Nat.cast_nonneg N).trans hx
  have hleft := hint ⌊x⌋₊ hNx
  have hright := hint (⌊x⌋₊ + 1) (by omega)
  change finitePrimitive ordinaryPrimeCoefficient x ⌊x⌋₊ ≤ 0
  apply finite_cell_sign (by omega) (Nat.floor_le hx0)
    (by simpa only [Nat.cast_add, Nat.cast_one] using (Nat.lt_floor_add_one x).le)
  · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hleft
  · simpa only [ordinaryPrimePrimitive, closedPrimitive, Nat.floor_natCast] using hright

/-- The open, actual reserve supplier has a checked route to eventual prime-primitive sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AccordionConsumer/Variant0023caa977abeefec2f9ecca48efbbce302d65040ba986a7647456e769816e0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AccordionConsumer/Variant0023caa977abeefec2f9ecca48efbbce302d65040ba986a7647456e769816e0a.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae2ffd7eb23d3bfbc6f676e3d3059654d4c8ade8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
