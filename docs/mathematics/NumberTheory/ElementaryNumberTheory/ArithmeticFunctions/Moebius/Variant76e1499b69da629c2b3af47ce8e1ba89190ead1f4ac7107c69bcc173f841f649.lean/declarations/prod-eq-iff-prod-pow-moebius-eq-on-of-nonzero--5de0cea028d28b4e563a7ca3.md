# prod_eq_iff_prod_pow_moebius_eq_on_of_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a09af7d-d835-6b08-1149-33d657c059d4",
  "kind": "theorem",
  "lexical_name": "prod_eq_iff_prod_pow_moebius_eq_on_of_nonzero",
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
  "slug": "prod-eq-iff-prod-pow-moebius-eq-on-of-nonzero--5de0cea028d28b4e563a7ca3",
  "source": {
    "blob": "283bbd89c84166d5a605ca4935ff79248ff74a1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 341,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5de0cea028d28b4e563a7ca3c34658eae757db04c2452c75d9a8b5c74f1534cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a09af7d-d835-6b08-1149-33d657c059d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_eq_iff_prod_pow_moebius_eq_on_of_nonzero [CommGroupWithZero R]
    (s : Set ℕ) (hs : ∀ m n, m ∣ n → n ∈ s → m ∈ s) {f g : ℕ → R}
    (hf : ∀ n > 0, f n ≠ 0) (hg : ∀ n > 0, g n ≠ 0) :
    (∀ n > 0, n ∈ s → (∏ i ∈ n.divisors, f i) = g n) ↔
      ∀ n > 0, n ∈ s → (∏ x ∈ n.divisorsAntidiagonal, g x.snd ^ μ x.fst) = f n := by
  refine
      Iff.trans
        (Iff.trans (forall_congr' fun n => ?_)
          (@prod_eq_iff_prod_pow_moebius_eq_on Rˣ _
            (fun n => if h : 0 < n then Units.mk0 (f n) (hf n h) else 1)
            (fun n => if h : 0 < n then Units.mk0 (g n) (hg n h) else 1)
            s hs))
        (forall_congr' fun n => ?_) <;>
    refine imp_congr_right fun hn => ?_
  · rw [dite_eq_left hn, ← Units.val_inj, ← Units.coeHom_apply, map_prod, Units.val_mk0,
      prod_congr rfl _]
    intro x hx
    rw [dite_eq_left (pos_of_mem_divisors hx), Units.coeHom_apply, Units.val_mk0]
  · rw [dite_eq_left hn, ← Units.val_inj, ← Units.coeHom_apply, map_prod, Units.val_mk0,
      prod_congr rfl _]
    intro x hx
    rw [dite_eq_left (pos_of_mem_divisors (snd_mem_divisors_of_mem_antidiagonal hx)),
      Units.coeHom_apply, Units.val_zpow_eq_zpow_val, Units.val_mk0]

end ArithmeticFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant76e1499b69da629c2b3af47ce8e1ba89190ead1f4ac7107c69bcc173f841f649.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283bbd89c84166d5a605ca4935ff79248ff74a1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
