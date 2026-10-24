# mem_supportedPairs_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e54cb65b2a9266db537dc0a3a147ffb6af6f6909",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3e1499b-2cd6-338b-66c5-f5b396a89ac0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c1b115a-49e9-7886-3b86-85e9d8cd6e5b",
  "kind": "theorem",
  "lexical_name": "mem_supportedPairs_iff",
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
  "slug": "mem-supportedpairs-iff--6f40bec1830b05ea2cd9078d",
  "source": {
    "blob": "e54cb65b2a9266db537dc0a3a147ffb6af6f6909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 85,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f40bec1830b05ea2cd9078dd86344af3db904637b13a1e4225ba3560f937464",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c1b115a-49e9-7886-3b86-85e9d8cd6e5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_supportedPairs_iff (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) (d e : ℕ) :
    (d, e) ∈ supportedPairs P ↔
      Squarefree d ∧ Squarefree e ∧ Nat.Coprime d e ∧
        d.primeFactors ⊆ P ∧ e.primeFactors ⊆ P := by
  constructor
  · intro h
    obtain ⟨s, hs, he⟩ := mem_image.mp h
    have hsub := assignment_subsets P s hs
    have hsfU := prime_product_squarefree s.1 (fun p hp ↦ hP p (hsub.1 hp))
    have hsfV := prime_product_squarefree s.2 (fun p hp ↦ hP p (hsub.2.1 hp))
    have hfac := assignment_primeFactors P hP s hs
    have hcop : Nat.Coprime (joinAssignment s).1 (joinAssignment s).2 := by
      apply (Nat.disjoint_primeFactors hsfU.ne_zero hsfV.ne_zero).mp
      change Disjoint (joinAssignment s).1.primeFactors (joinAssignment s).2.primeFactors
      rw [hfac.1, hfac.2]
      exact hsub.2.2
    have hd : (joinAssignment s).1 = d := congrArg Prod.fst he
    have he' : (joinAssignment s).2 = e := congrArg Prod.snd he
    rw [← hd, ← he']
    refine ⟨hsfU, hsfV, hcop, ?_, ?_⟩
    · rw [hfac.1]
      exact hsub.1
    · rw [hfac.2]
      exact hsub.2.1
  · rintro ⟨hd, he, hcop, hdP, heP⟩
    apply mem_image.mpr
    refine ⟨⟨d.primeFactors, e.primeFactors⟩, ?_, ?_⟩
    · apply mem_sigma.mpr
      refine ⟨mem_powerset.mpr hdP, mem_powerset.mpr ?_⟩
      intro p hp
      apply mem_sdiff.mpr
      refine ⟨heP hp, ?_⟩
      intro hpd
      exact disjoint_left.mp hcop.disjoint_primeFactors hpd hp
    · exact Prod.ext (Nat.prod_primeFactors_of_squarefree hd)
        (Nat.prod_primeFactors_of_squarefree he)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProductAudit/Variant227f602c68b66736d2cee6489d2301590f27fd79cb477fea4ce2c77495db9ecc.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54cb65b2a9266db537dc0a3a147ffb6af6f6909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
