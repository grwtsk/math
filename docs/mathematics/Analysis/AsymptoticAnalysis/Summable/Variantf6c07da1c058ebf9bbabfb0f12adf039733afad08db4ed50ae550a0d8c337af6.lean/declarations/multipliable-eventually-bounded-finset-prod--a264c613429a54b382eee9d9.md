# Multipliable.eventually_bounded_finset_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7244bb9-2025-fa1e-e80e-158e25a03d62",
  "kind": "lemma",
  "lexical_name": "Multipliable.eventually_bounded_finset_prod",
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
  "slug": "multipliable-eventually-bounded-finset-prod--a264c613429a54b382eee9d9",
  "source": {
    "blob": "9d8494be20e077db143adc74cfcefeac4ebb4476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a264c613429a54b382eee9d9352bd614572d8a0a850f57546bbafe743aaf613e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7244bb9-2025-fa1e-e80e-158e25a03d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Multipliable.eventually_bounded_finset_prod {v : ι → ℝ} (hv : Multipliable v) :
    ∃ r₁ > 0, ∃ s₁, ∀ t, s₁ ⊆ t → ∏ i ∈ t, v i ≤ r₁ := by
  obtain ⟨r₁, hr₁⟩ := exists_gt (max 0 <| ∏' i, v i)
  rw [max_lt_iff] at hr₁
  have := hv.hasProd.eventually_le_const hr₁.2
  rw [eventually_atTop] at this
  exact ⟨r₁, hr₁.1, this⟩

variable {R : Type*} [NormedCommRing R] [NormOneClass R] {f : ι → R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variantf6c07da1c058ebf9bbabfb0f12adf039733afad08db4ed50ae550a0d8c337af6.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d8494be20e077db143adc74cfcefeac4ebb4476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
