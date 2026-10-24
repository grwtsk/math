# mem_primeFactors_prod_toNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db6c51b6928b80e89948a68e8ad4008f51272d82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 264,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10307c8f-7bb9-0c02-019f-04b2c39edb52",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e34d3d1-56df-2519-3241-9bb3740392bc",
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
  "slug": "mem-primefactors-prod-tonat--8a8176998f9c73bae057385f",
  "source": {
    "blob": "db6c51b6928b80e89948a68e8ad4008f51272d82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a8176998f9c73bae057385fed7c24c80f72fd25b8f2633f37ca179e53b437c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e34d3d1-56df-2519-3241-9bb3740392bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–280.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington3/Variant3b09a2097763ecf74ee562c128c3243a82492c77161794df5992db37344e9262.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6c51b6928b80e89948a68e8ad4008f51272d82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
