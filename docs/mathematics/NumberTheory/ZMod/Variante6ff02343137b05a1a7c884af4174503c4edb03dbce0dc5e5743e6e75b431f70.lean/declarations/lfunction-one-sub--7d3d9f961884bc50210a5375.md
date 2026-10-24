# LFunction_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbcb9be7-364f-d08d-fc3f-c51387adf7c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2863f7c-7c56-8bdb-45c7-ba48de5471a2",
  "kind": "theorem",
  "lexical_name": "LFunction_one_sub",
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
  "slug": "lfunction-one-sub--7d3d9f961884bc50210a5375",
  "source": {
    "blob": "7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 219,
    "path": "GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d3d9f961884bc50210a53755541f577b98f1d38899040f7d4ed418aa43cd8ce",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2863f7c-7c56-8bdb-45c7-ba48de5471a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LFunction_one_sub (Φ : ZMod N → ℂ) {s : ℂ}
    (hs : ∀ (n : ℕ), s ≠ -n) (hs' : Φ 0 = 0 ∨ s ≠ 1) :
    LFunction Φ (1 - s) = N ^ (s - 1) * (2 * π) ^ (-s) * Gamma s *
      (cexp (π * I * s / 2) * LFunction (𝓕 Φ) s
       + cexp (-π * I * s / 2) * LFunction (𝓕 fun x ↦ Φ (-x)) s) := by
  rw [LFunction]
  have (j : ZMod N) :  Φ j * hurwitzZeta (toAddCircle j) (1 - s) = Φ j *
      ((2 * π) ^ (-s) * Gamma s * (cexp (-π * I * s / 2) *
      expZeta (toAddCircle j) s + cexp (π * I * s / 2) * expZeta (-toAddCircle j) s)) := by
    rcases eq_or_ne j 0 with rfl | hj
    · rcases hs' with hΦ | hs'
      · simp only [hΦ, zero_mul]
      · rw [hurwitzZeta_one_sub _ hs (Or.inr hs')]
    · rw [hurwitzZeta_one_sub _ hs (Or.inl <| toAddCircle_eq_zero.not.mpr hj)]
  simp only [this, mul_assoc _ _ (Gamma s)]
  -- get rid of Gamma terms and power of N
  generalize (2 * π) ^ (-s) * Gamma s = C
  simp_rw [← mul_assoc, mul_comm _ C, mul_assoc, ← mul_sum, ← mul_assoc, mul_comm _ C, mul_assoc,
    neg_sub]
  congr 2
  -- now gather sum terms
  rw [LFunction_dft _ hs', LFunction_dft _ (hs'.imp_left <| by simp only [neg_zero, imp_self])]
  conv_rhs => enter [2, 2]; rw [← (Equiv.neg _).sum_comp _ _ (by simp), Equiv.neg_apply]
  simp_rw [neg_neg, mul_sum, ← sum_add_distrib, ← mul_assoc, mul_comm _ (Φ _), mul_assoc,
    ← mul_add, map_neg, add_comm]

section signed

variable {Φ : ZMod N → ℂ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
