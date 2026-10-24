# mem_primeFactors_prod_toNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4401c415-3c3a-8320-cd50-715d4f59f81f",
  "kind": "theorem",
  "lexical_name": "mem_primeFactors_prod_toNat",
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
  "slug": "mem-primefactors-prod-tonat--a22a33508bf89d572a19b455",
  "source": {
    "blob": "dce484fbbb37759807ecf0c2069e303a8848841d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 272,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a22a33508bf89d572a19b4556cc2790bf9e60d15b1aa4c876286273e88966b73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4401c415-3c3a-8320-cd50-715d4f59f81f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_primeFactors_prod_toNat (L : List PrimePow) (p : ℕ) :
    p ∈ (L.map PrimePow.toNat |>.prod |>.primeFactors) → ∃ pp ∈ L, pp.prime = p := by
  induction L with
  | nil => simp
  | cons pp _ ih =>
    rw [List.map_cons, List.prod_cons, Nat.primeFactors_mul, List.exists_mem_cons_iff,
      Finset.mem_union, pp.toNat_def]
    · refine Or.imp ?_ ih
      · by_cases h0 : pp.pow = 0
        · rw [h0, pow_zero, Nat.primeFactors_one]; grind
        · rw [Nat.primeFactors_prime_pow h0 pp.pf]; grind
    · exact pow_ne_zero _ pp.pf.ne_zero
    · refine List.prod_ne_zero ?_
      rw [List.mem_map, not_exists]
      exact fun pp h ↦ absurd h.2 <| pow_ne_zero _ pp.pf.ne_zero

-- `omega` is >2x faster than `lia` here (57ms vs 148ms median over 5 runs)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant0626a474cbfde192cabea9fdd817db4f568d6c2d5eb1a98a51bc6d805349505f.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dce484fbbb37759807ecf0c2069e303a8848841d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
