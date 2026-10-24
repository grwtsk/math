# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b17d99b76b165423c45477085b818934da58a9e090c9e7bd087ad7b79afb79c5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fa172bd35c1c20aff2bc9b92",
  "source": {
    "blob": "566e053105d496bf12b7490813a14cfc5af48700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 158,
    "path": "GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa172bd35c1c20aff2bc9b92e54ab552ffcafad9b479984e971e3d5a65bf323c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b17d99b76b165423c45477085b818934da58a9e090c9e7bd087ad7b79afb79c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
scoped instance (priority := 100) : ContinuousMul Γ₀ where
  continuous_mul := by
    simp only [continuous_iff_continuousAt, ContinuousAt]
    rintro ⟨x, y⟩
    wlog hle : x ≤ y generalizing x y
    · have := (this y x (le_of_not_le hle)).comp (continuous_swap.tendsto (x, y))
      simpa only [mul_comm, Function.comp_def, Prod.swap] using this
    rcases eq_or_ne x 0 with (rfl | hx) <;> [rcases eq_or_ne y 0 with (rfl | hy); skip]
    · rw [zero_mul]
      refine ((hasBasis_nhds_zero.prod_nhds hasBasis_nhds_zero).tendsto_iff hasBasis_nhds_zero).2
        fun γ hγ => ⟨(γ, 1), ⟨hγ, one_ne_zero⟩, ?_⟩
      rintro ⟨x, y⟩ ⟨hx : x < γ, hy : y < 1⟩
      exact (mul_lt_mul'' hx hy zero_le' zero_le').trans_eq (mul_one γ)
    · rw [zero_mul, nhds_prod_eq, nhds_of_ne_zero hy, prod_pure, tendsto_map'_iff]
      refine (hasBasis_nhds_zero.tendsto_iff hasBasis_nhds_zero).2 fun γ hγ => ?_
      refine ⟨γ / y, div_ne_zero hγ hy, fun x hx => ?_⟩
      calc x * y < γ / y * y := mul_lt_mul_of_pos_right hx (zero_lt_iff.2 hy)
      _ = γ := div_mul_cancel₀ _ hy
    · have hy : y ≠ 0 := ((zero_lt_iff.mpr hx).trans_le hle).ne'
      rw [nhds_prod_eq, nhds_of_ne_zero hx, nhds_of_ne_zero hy, prod_pure_pure]
      exact pure_le_nhds (x * y)

@[nolint defLemma]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithZeroTopology/Variant7491535ba77d72ffdfa704b661734cd20182dfca1b59ea04ef053e7e3eb77ed8.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `566e053105d496bf12b7490813a14cfc5af48700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
