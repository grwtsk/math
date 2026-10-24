# coeff_ne_zero_of_lexOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:999195f4-9282-0601-8ce1-0ed8152b99fa",
  "kind": "theorem",
  "lexical_name": "coeff_ne_zero_of_lexOrder",
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
  "slug": "coeff-ne-zero-of-lexorder--cdf5ff201034ee2092edf10d",
  "source": {
    "blob": "fae18449e08927ffe3ace32c4f47c600761b14dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdf5ff201034ee2092edf10d78535b5bcf7f29182cb085a145711a6d8d9ed3da",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:999195f4-9282-0601-8ce1-0ed8152b99fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_ne_zero_of_lexOrder {φ : MvPowerSeries σ R} {d : σ →₀ ℕ}
    (h : toLex d = lexOrder φ) : coeff d φ ≠ 0 := by
  have hφ : φ ≠ 0 := by
    simp only [ne_eq, ← lexOrder_eq_top_iff_eq_zero, ← h, WithTop.coe_ne_top, not_false_eq_true]
  have hφ' := lexOrder_def_of_ne_zero hφ
  rcases hφ' with ⟨ne, hφ'⟩
  simp only [← h, WithTop.coe_eq_coe] at hφ'
  suffices toLex d ∈ toLex '' φ.support by
    simp only [Set.mem_image_equiv, toLex_symm_eq, ofLex_toLex] at this
    apply this
  rw [hφ']
  apply WellFounded.min_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/LexOrder/Variant9cfba49e2f79324a025110bd38ca3485c2585922a822a8548fb0c5557d5dfced.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fae18449e08927ffe3ace32c4f47c600761b14dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
