# gaussNorm_le_mul

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
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efbb6a64-b999-3978-1411-5e9f00321975",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7306a3d-4e3f-f4db-a8da-0278f5b4de48",
  "kind": "lemma",
  "lexical_name": "gaussNorm_le_mul",
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
  "slug": "gaussnorm-le-mul--c9ff79db7bc5980d8af264d1",
  "source": {
    "blob": "7139b58a07fda4074b6ebc0925035655a1160356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 219,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9ff79db7bc5980d8af264d1bcacff41306e3b470002f0cee3785ed72678ebb5",
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

Occurrence: `result:a7306a3d-4e3f-f4db-a8da-0278f5b4de48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussNorm_le_mul (vMulEq : ∀ a b, v (a * b) = v a * v b)
    (vna : IsNonarchimedean v) (vNeg : ∀ a, v a = v (-a))
    (hbfg : HasGaussNorm v c (f * g))
    (hdom : ∃ i j, AchievesGaussNorm v c f i ∧ AchievesGaussNorm v c g j ∧
      ∀ p ∈ Finset.antidiagonal (i + j), p ≠ (i, j) →
        v (coeff p.1 f * coeff p.2 g) < v (coeff i f) * v (coeff j g)) :
    gaussNorm v c f * gaussNorm v c g ≤ gaussNorm v c (f * g) := by
  obtain ⟨i₀, j₀, hi₀, hj₀, hdom'⟩ := hdom
  unfold AchievesGaussNorm at hi₀ hj₀
  calc
    _  = (v (coeff i₀ f) * i₀.prod (c · ^ ·)) * (v (coeff j₀ g) * j₀.prod (c · ^ ·)) := by
          rw [← hi₀, ← hj₀]
    _ = v (coeff i₀ f) * v (coeff j₀ g) * ((i₀ + j₀).prod (c · ^ ·)) := by
          have hprod : (i₀ + j₀).prod (c · ^ ·) = i₀.prod (c · ^ ·) * j₀.prod (c · ^ ·) := by
            simp [Finsupp.prod_add_index', pow_add]
          rw [hprod]; ring
    _ = v (coeff i₀ f * coeff j₀ g) * (i₀ + j₀).prod (c · ^ ·) := by rw [vMulEq]
    _ = v (coeff (i₀ + j₀) (f * g)) * (i₀ + j₀).prod (c · ^ ·) := by
      rw [antidiagonal_dominant v f g i₀ j₀ vna vMulEq vNeg hdom']
    _ ≤ gaussNorm v c (f * g) := le_gaussNorm v c (f * g) hbfg (i₀ + j₀)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant260e1bd6635eff074c6c438a358aac01d357f4f0fbb8d3b2273a0317ce7a567c.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7139b58a07fda4074b6ebc0925035655a1160356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
