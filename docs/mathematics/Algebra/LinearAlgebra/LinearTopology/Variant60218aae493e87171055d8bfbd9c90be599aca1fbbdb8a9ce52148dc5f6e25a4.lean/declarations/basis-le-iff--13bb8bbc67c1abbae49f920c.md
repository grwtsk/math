# basis_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2af2a9a1-271c-5931-d439-cc2ed054b82e",
  "kind": "theorem",
  "lexical_name": "basis_le_iff",
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
  "slug": "basis-le-iff--13bb8bbc67c1abbae49f920c",
  "source": {
    "blob": "5313a8e6457068eea2a9572a5043485721efa90d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 91,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13bb8bbc67c1abbae49f920c2ee83ca6cda3899a3f6bd918f440dfd988fc9ce7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2af2a9a1-271c-5931-d439-cc2ed054b82e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basis_le_iff {J K : TwoSidedIdeal R} {d e : σ →₀ ℕ} (hK : K ≠ ⊤) :
    basis σ R ⟨J, d⟩ ≤ basis σ R ⟨K, e⟩ ↔ J ≤ K ∧ e ≤ d := by
  classical
  constructor
  · simp only [basis, TwoSidedIdeal.le_iff, TwoSidedIdeal.coe_mk', setOf_subset_setOf]
    intro h
    constructor
    · intro x hx
      have (d') : coeff R d' (C σ R x) ∈ J := by
        rw [coeff_C]; split_ifs <;> [exact hx; exact J.zero_mem]
      simpa using h (C σ R x) (fun _ _ ↦ this _) _ (zero_le _)
    · by_contra h'
      apply hK
      rw [eq_top_iff]
      intro x _
      have (d') (hd'_le : d' ≤ d) : coeff R d' (monomial R e x) ∈ J := by
        rw [coeff_monomial]
        split_ifs with hd' <;> [exact (h' (hd' ▸ hd'_le)).elim; exact J.zero_mem]
      simpa using h (monomial R e x) this _ le_rfl
  · rintro ⟨hJK, hed⟩
    exact basis_le hJK hed

variable [TopologicalSpace R]

-- We endow MvPowerSeries σ R with the product topology.
open WithPiTopology

/-- If the ring `R` is endowed with a linear topology, then the sets `↑basis σ R (J, d)`,
for `J : TwoSidedIdeal R` which are neighborhoods of `0 : R` and `d : σ →₀ ℕ`,
constitute a basis of neighborhoods of `0 : MvPowerSeries σ R` for the product topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearTopology/Variant60218aae493e87171055d8bfbd9c90be599aca1fbbdb8a9ce52148dc5f6e25a4.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5313a8e6457068eea2a9572a5043485721efa90d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
