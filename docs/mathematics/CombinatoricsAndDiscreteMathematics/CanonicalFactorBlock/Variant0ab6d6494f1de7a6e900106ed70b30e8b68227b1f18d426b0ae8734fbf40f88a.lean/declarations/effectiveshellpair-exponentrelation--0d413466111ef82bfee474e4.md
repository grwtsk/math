# effectiveShellPair_exponentRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbb03424e1107c51b98bd3b15ae45091417f206d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed7197f8-eb3d-ea49-c38e-22396767cfd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca79a561-ee05-180c-0cee-b3d047558227",
  "kind": "theorem",
  "lexical_name": "effectiveShellPair_exponentRelation",
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
  "slug": "effectiveshellpair-exponentrelation--0d413466111ef82bfee474e4",
  "source": {
    "blob": "cbb03424e1107c51b98bd3b15ae45091417f206d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d413466111ef82bfee474e41bb985bf275af16e9daaace66ec337a0cd0381bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca79a561-ee05-180c-0cee-b3d047558227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveShellPair_exponentRelation {N q : ℕ}
    {m k : VaughanScaleIndex N}
    (hpair : IsEffectiveTypeIIShellPair N q (m, k)) :
    halfOpenFactorExponent m.1 + halfOpenFactorExponent k.1 = q - 1 ∨
      halfOpenFactorExponent m.1 + halfOpenFactorExponent k.1 = q ∨
      halfOpenFactorExponent m.1 + halfOpenFactorExponent k.1 = q + 1 := by
  let j := halfOpenFactorExponent m.1
  let l := halfOpenFactorExponent k.1
  have hmpos : 0 < m.1 :=
    (show 0 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hpair.1)
  have hkpos : 0 < k.1 :=
    (show 0 < 2 by decide).trans
      ((two_le_vaughanFourthRootCutoff N).trans_lt hpair.2.1)
  have hmLower : 2 ^ j ≤ m.1 := pow_halfOpenFactorExponent_le hmpos
  have hkLower : 2 ^ l ≤ k.1 := pow_halfOpenFactorExponent_le hkpos
  have hmUpper : m.1 < 2 ^ (j + 1) := lt_pow_halfOpenFactorExponent_succ hmpos
  have hkUpper : k.1 < 2 ^ (l + 1) := lt_pow_halfOpenFactorExponent_succ hkpos
  have hshellLower : 2 ^ q < m.1 * k.1 := hpair.2.2.1
  have hshellUpper : m.1 * k.1 ≤ 2 ^ (q + 1) := hpair.2.2.2.1
  have hsumLower : q - 1 ≤ j + l := by
    by_contra hnot
    have hsum : j + l ≤ q - 2 := by omega
    have hpow : 2 ^ ((j + 1) + (l + 1)) ≤ 2 ^ q := by
      apply Nat.pow_le_pow_right (by decide)
      omega
    have hprod : m.1 * k.1 < 2 ^ ((j + 1) + (l + 1)) := by
      rw [pow_add]
      exact mul_lt_mul hmUpper hkUpper.le hkpos (by positivity)
    omega
  have hsumUpper : j + l ≤ q + 1 := by
    by_contra hnot
    have hsum : q + 2 ≤ j + l := by omega
    have hpow : 2 ^ (q + 2) ≤ 2 ^ (j + l) := by
      exact Nat.pow_le_pow_right (by decide) hsum
    have hprod : 2 ^ (j + l) ≤ m.1 * k.1 := by
      rw [pow_add]
      exact Nat.mul_le_mul hmLower hkLower
    have hstrict : 2 ^ (q + 1) < 2 ^ (q + 2) :=
      Nat.pow_lt_pow_right Nat.one_lt_two (by omega)
    omega
  change j + l = q - 1 ∨ j + l = q ∨ j + l = q + 1
  omega

/-- The canonical shell block assigned to an effective factor pair. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb03424e1107c51b98bd3b15ae45091417f206d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
