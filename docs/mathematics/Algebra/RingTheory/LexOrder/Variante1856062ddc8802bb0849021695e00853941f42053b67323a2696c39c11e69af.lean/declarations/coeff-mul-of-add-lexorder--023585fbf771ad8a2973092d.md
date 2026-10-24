# coeff_mul_of_add_lexOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4c4dd8d-8f99-823f-be3a-f5eee3344cf0",
  "kind": "theorem",
  "lexical_name": "coeff_mul_of_add_lexOrder",
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
  "slug": "coeff-mul-of-add-lexorder--023585fbf771ad8a2973092d",
  "source": {
    "blob": "596e2c44b9e3aa8d5477f9cc5c048af97ada8da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 127,
    "path": "GRWTSK/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:023585fbf771ad8a2973092d015a414281da9b686c8fe7ef4274824dfc5410e4",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4c4dd8d-8f99-823f-be3a-f5eee3344cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_mul_of_add_lexOrder {φ ψ : MvPowerSeries σ R}
    {p q : σ →₀ ℕ} (hp : lexOrder φ = toLex p) (hq : lexOrder ψ = toLex q) :
    coeff R (p + q) (φ * ψ) = coeff R p φ * coeff R q ψ := by
  rw [coeff_mul, Finset.sum_eq_single_of_mem ⟨p, q⟩ (by simp)]
  rintro ⟨u, v⟩ h h'
  simp only [Finset.mem_antidiagonal] at h
  rcases trichotomy_of_add_eq_add (congrArg toLex h) with h'' | h'' | h''
  · exact False.elim (h' (by simp [Prod.ext_iff, h''.1, h''.2]))
  · rw [coeff_eq_zero_of_lt_lexOrder (d := u), zero_mul]
    rw [hp]
    norm_cast
  · rw [coeff_eq_zero_of_lt_lexOrder (d := v), mul_zero]
    rw [hq]
    norm_cast

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/LexOrder/Variante1856062ddc8802bb0849021695e00853941f42053b67323a2696c39c11e69af.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596e2c44b9e3aa8d5477f9cc5c048af97ada8da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
