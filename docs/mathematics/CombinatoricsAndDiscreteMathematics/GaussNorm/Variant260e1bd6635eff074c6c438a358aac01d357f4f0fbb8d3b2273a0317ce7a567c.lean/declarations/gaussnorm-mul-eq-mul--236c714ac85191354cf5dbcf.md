# gaussNorm_mul_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7139b58a07fda4074b6ebc0925035655a1160356",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12482a47-2e4f-a407-3691-0908e2976ae7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:257080aa-25ce-987d-d4fa-89f651be29f3",
  "kind": "lemma",
  "lexical_name": "gaussNorm_mul_eq_mul",
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
  "slug": "gaussnorm-mul-eq-mul--236c714ac85191354cf5dbcf",
  "source": {
    "blob": "7139b58a07fda4074b6ebc0925035655a1160356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:236c714ac85191354cf5dbcfcc87550234828c506a8137f79c05ff7ad7aac0ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:257080aa-25ce-987d-d4fa-89f651be29f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussNorm_mul_eq_mul (f g : MvPowerSeries σ R) (hf : HasGaussNorm v c f)
    (hg : HasGaussNorm v c g) (hfg : HasGaussNorm v c (f * g))
    (vNonneg : ∀ a, v a ≥ 0) (vZero : v 0 = 0) (vNA : IsNonarchimedean v)
    (vMulEq : ∀ (a b : R), v (a * b) = v a * v b) (vNeg : ∀ (a : R), v (-a) = v a)
    (h_eq_zero : ∀ (x : R), v x = 0 → x = 0) (hc : ∀ (i : σ), 0 < c i)
    (hdom : ∃ i j, AchievesGaussNorm v c f i ∧ AchievesGaussNorm v c g j ∧
      ∀ p ∈ Finset.antidiagonal (i + j), p ≠ (i, j) → v (coeff p.1 f * coeff p.2 g) <
      v (coeff i f) * v (coeff j g)) :
    gaussNorm v c (f * g) = gaussNorm v c f * gaussNorm v c g := by
  by_cases hf' : f = 0
  · simp [hf', gaussNorm_zero v c vZero]
  by_cases hg' : g = 0
  · simp [hg', gaussNorm_zero v c vZero]
  have hf1 : gaussNorm v c f ≠ 0 := by
    convert gaussNorm_eq_zero_iff v c f vZero vNonneg h_eq_zero hc hf
    grind
  have hg1 : gaussNorm v c g ≠ 0 := by
    convert gaussNorm_eq_zero_iff v c g vZero vNonneg h_eq_zero hc hg
    grind
  apply ge_antisymm_iff.mpr
  constructor
  · exact gaussNorm_le_mul v c f g vMulEq vNA (by grind) hfg hdom
  · exact gaussNorm_mul_le v c f g (StrongLT.le hc) vNonneg (by grind) vNA vZero hf hg

end absoluteValue

end MvPowerSeries
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7139b58a07fda4074b6ebc0925035655a1160356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
