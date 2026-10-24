# tprod_eq_tprod_primes_of_mulSupport_subset_prime_powers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ca4dc098acc1ae00b08cc00185b830ece502f2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3094ca3e-ca84-f5fa-44dc-da63a53651b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c219eab-f08b-c50c-1e14-34f6b681bac8",
  "kind": "lemma",
  "lexical_name": "tprod_eq_tprod_primes_of_mulSupport_subset_prime_powers",
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
  "slug": "tprod-eq-tprod-primes-of-mulsupport-subset-prime-powers--5aa5911fa0f6d92e89b436b9",
  "source": {
    "blob": "4ca4dc098acc1ae00b08cc00185b830ece502f2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aa5911fa0f6d92e89b436b94b8c56eddd1a703a37d87cc359240ff6c93a45af",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c219eab-f08b-c50c-1e14-34f6b681bac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tprod_eq_tprod_primes_of_mulSupport_subset_prime_powers {f : ℕ → α}
    (hfm : Multipliable f) (hf : Function.mulSupport f ⊆ {n | IsPrimePow n}) :
    ∏' n : ℕ, f n = ∏' (p : Nat.Primes) (k : ℕ), f (p ^ (k + 1)) := by
  have hfm' : Multipliable fun pk : Nat.Primes × ℕ ↦ f (pk.fst ^ (pk.snd + 1)) :=
    prodNatEquiv.symm.multipliable_iff.mp <| by
      simpa only [← coe_prodNatEquiv_apply, Prod.eta, Function.comp_def, Equiv.apply_symm_apply]
        using hfm.subtype _
  simp only [← tprod_subtype_eq_of_mulSupport_subset hf, Set.coe_setOf, ← prodNatEquiv.tprod_eq,
    ← hfm'.tprod_prod]
  refine tprod_congr fun (p, k) ↦ congrArg f <| coe_prodNatEquiv_apply ..

@[to_additive tsum_eq_tsum_primes_add_tsum_primes_of_support_subset_prime_powers]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca4dc098acc1ae00b08cc00185b830ece502f2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
