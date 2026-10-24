# vonMangoldt_twelve_mul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c057b5fa29778b9671ce287235a06ab5d31ea417",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2adadaf4-f867-3181-0570-ac0dfa8f992d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:64a14783-a308-b9ca-9f2d-e4728c3cc6a8",
  "kind": "theorem",
  "lexical_name": "vonMangoldt_twelve_mul_eq_zero",
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
  "slug": "vonmangoldt-twelve-mul-eq-zero--52fe790b7c66182ad84d7ce5",
  "source": {
    "blob": "c057b5fa29778b9671ce287235a06ab5d31ea417",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52fe790b7c66182ad84d7ce50ba63f1ebd57f291390d6523b8dc37b92ada3b35",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64a14783-a308-b9ca-9f2d-e4728c3cc6a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vonMangoldt_twelve_mul_eq_zero (k : ℕ) :
    vonMangoldt (12 * k) = 0 := by
  apply vonMangoldt_eq_zero_iff.mpr
  intro hp
  rcases isPrimePow_iff_unique_prime_dvd.mp hp with ⟨p, _, huniq⟩
  have h2 : 2 ∣ 12 * k :=
    dvd_trans (by norm_num : 2 ∣ (12 : ℕ)) (dvd_mul_right 12 k)
  have h3 : 3 ∣ 12 * k :=
    dvd_trans (by norm_num : 3 ∣ (12 : ℕ)) (dvd_mul_right 12 k)
  have hp2 : 2 = p := huniq 2 ⟨Nat.prime_two, h2⟩
  have hp3 : 3 = p := huniq 3 ⟨Nat.prime_three, h3⟩
  have h23 : (2 : ℕ) = 3 := hp2.trans hp3.symm
  norm_num at h23

/-- The already checked complete zero-coefficient flux identity applies to every positive atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAbsoluteCutoffCost/Variant1c2a6f1384dc63109ad241ddfaca6c7b5c76b430ce95bd8ddb03053a6c510ad8.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c057b5fa29778b9671ce287235a06ab5d31ea417` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
