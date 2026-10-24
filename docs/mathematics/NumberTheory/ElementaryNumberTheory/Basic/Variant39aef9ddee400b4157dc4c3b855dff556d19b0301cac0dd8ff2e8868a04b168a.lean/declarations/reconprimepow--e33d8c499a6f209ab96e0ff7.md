# recOnPrimePow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:773b4f158cb755409d1bfba90a8a744f3ff28136dc7705bc407b6f6b26e4da80",
  "kind": "def",
  "lexical_name": "recOnPrimePow",
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
  "slug": "reconprimepow--e33d8c499a6f209ab96e0ff7",
  "source": {
    "blob": "f76683c5ca2e6fa7651186e158a5ce2c7080c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 828,
    "line": 794,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e33d8c499a6f209ab96e0ff73727c77b9c76578b518c3c39dae5cbb47ea89739",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:773b4f158cb755409d1bfba90a8a744f3ff28136dc7705bc407b6f6b26e4da80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 794–828.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recOnPrimePow {P : ℕ → Sort*} (h0 : P 0) (h1 : P 1)
    (h : ∀ a p n : ℕ, p.Prime → ¬p ∣ a → 0 < n → P a → P (p ^ n * a)) : ∀ a : ℕ, P a := fun a =>
  Nat.strongRecOn a fun n =>
    match n with
    | 0 => fun _ => h0
    | 1 => fun _ => h1
    | k + 2 => fun hk => by
      let p := (k + 2).minFac
      have hp : Prime p := minFac_prime (succ_succ_ne_one k)
      -- the awkward `let` stuff here is because `factorization` is noncomputable (Finsupp);
      -- we get around this by using the computable `factors.count`, and rewriting when we want
      -- to use the `factorization` API
      let t := (k + 2).factors.count p
      have ht : t = (k + 2).factorization p := factors_count_eq
      have hpt : p ^ t ∣ k + 2 := by
        rw [ht]
        exact ord_proj_dvd _ _
      have htp : 0 < t := by
        rw [ht]
        exact hp.factorization_pos_of_dvd (Nat.succ_ne_zero _) (minFac_dvd _)
      convert h ((k + 2) / p ^ t) p t hp _ _ _ using 1
      · rw [Nat.mul_div_cancel' hpt]
      · rw [Nat.dvd_div_iff hpt, ← pow_succ, ht]
        exact pow_succ_factorization_not_dvd (k + 1).succ_ne_zero hp
      · exact htp
      · apply hk _ (Nat.div_lt_of_lt_mul _)
        rw [lt_mul_iff_one_lt_left Nat.succ_pos', one_lt_pow_iff htp.ne]
        exact hp.one_lt
        -- Porting note: was
        -- simp [lt_mul_iff_one_lt_left Nat.succ_pos', one_lt_pow_iff htp.ne, hp.one_lt]
#align nat.rec_on_prime_pow Nat.recOnPrimePow

/-- Given `P 0`, `P 1`, and `P (p ^ n)` for positive prime powers, and a way to extend `P a` and
`P b` to `P (a * b)` when `a, b` are positive coprime, we can define `P` for all natural numbers. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant39aef9ddee400b4157dc4c3b855dff556d19b0301cac0dd8ff2e8868a04b168a.lean#L794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f76683c5ca2e6fa7651186e158a5ce2c7080c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
