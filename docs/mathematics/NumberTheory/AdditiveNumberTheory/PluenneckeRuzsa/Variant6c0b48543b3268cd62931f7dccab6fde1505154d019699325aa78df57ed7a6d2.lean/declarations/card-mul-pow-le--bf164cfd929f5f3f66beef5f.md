# card_mul_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb0cb127-5e99-12e5-441a-20877633be40",
  "kind": "lemma",
  "lexical_name": "card_mul_pow_le",
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
  "slug": "card-mul-pow-le--bf164cfd929f5f3f66beef5f",
  "source": {
    "blob": "9287c2dd07ecfe8a770ebfb7b40a6c06d4102111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 219,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf164cfd929f5f3f66beef5fa13cb391d3ba599c90285a49fbc550bbfe4dac16",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb0cb127-5e99-12e5-441a-20877633be40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma card_mul_pow_le (hAB : ∀ A' ⊆ A, #(A * B) * #A' ≤ #(A' * B) * #A) (n : ℕ) :
    #(A * B ^ n) ≤ (#(A * B) / #A : ℚ≥0) ^ n * #A := by
  obtain rfl | hA := A.eq_empty_or_nonempty
  · simp
  induction n with
  | zero => simp
  | succ n ih =>
    refine le_of_mul_le_mul_right ?_ (by positivity : (0 : ℚ≥0) < #A)
    calc
      ((#(A * B ^ (n + 1))) * #A : ℚ≥0)
        = #(B ^ n * A * B) * #A := by rw [pow_succ, mul_left_comm, mul_assoc]
      _ ≤ #(A * B) * #(B ^ n * A) := mod_cast pluennecke_petridis_inequality_mul _ hAB
      _ ≤ #(A * B) * ((#(A * B) / #A) ^ n * #A) := by rw [mul_comm _ A]; gcongr
      _ = (#(A * B) / #A) ^ (n + 1) * #A * #A := by field_simp; ring

/-- The **Plünnecke-Ruzsa inequality**. Multiplication version. Note that this is genuinely harder
than the division version because we cannot use a double counting argument. -/
@[to_additive "The **Plünnecke-Ruzsa inequality**. Addition version. Note that this is genuinely
harder than the subtraction version because we cannot use a double counting argument."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9287c2dd07ecfe8a770ebfb7b40a6c06d4102111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
