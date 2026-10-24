# tendsto_trunc_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3991e317-dfff-275f-fc69-1c0b563b4a8a",
  "kind": "theorem",
  "lexical_name": "tendsto_trunc_atTop",
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
  "slug": "tendsto-trunc-attop--abdfe9819198fb988cb50fe3",
  "source": {
    "blob": "389dfc16137b1911e7074a93fae2c3833a2eaad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abdfe9819198fb988cb50fe338c24dc120a6e501cf71679309bfc7e26f3c94f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3991e317-dfff-275f-fc69-1c0b563b4a8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_trunc_atTop [DecidableEq σ] [CommSemiring R] [Nonempty σ] (f : MvPowerSeries σ R) :
    Tendsto (fun d ↦ (trunc R d f : MvPowerSeries σ R)) atTop (𝓝 f) := by
  rw [tendsto_iff_coeff_tendsto]
  intro d
  obtain ⟨s, _⟩ := (exists_const σ).mpr trivial
  apply tendsto_atTop_of_eventually_const (i₀ := d + Finsupp.single s 1)
  intro n hn
  rw [MvPolynomial.coeff_coe, coeff_trunc, if_pos]
  apply lt_of_lt_of_le _ hn
  simp only [lt_add_iff_pos_right, Finsupp.lt_def]
  refine ⟨zero_le _, ⟨s, by simp⟩⟩

/-- The inclusion of polynomials into power series has dense image -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PiTopology/Variantd8679fce5d71509ed3530bb0f45d1c96f065dcd0f376abd1288765f63b148aba.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `389dfc16137b1911e7074a93fae2c3833a2eaad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
