# one_half_le_unitCharacter_nat_re_on_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96ce0a27-caf9-b44c-eba1-e02aeb76f0d1",
  "kind": "theorem",
  "lexical_name": "one_half_le_unitCharacter_nat_re_on_core",
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
  "slug": "one-half-le-unitcharacter-nat-re-on-core--2ce710d76e8a2964dbf9806f",
  "source": {
    "blob": "bf516f0e84b56741728594781af922e362708f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 130,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ce710d76e8a2964dbf9806fd3dee985407ccd5790d55152519c4b0737f75780",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96ce0a27-caf9-b44c-eba1-e02aeb76f0d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_half_le_unitCharacter_nat_re_on_core
    {N n : ℕ} (hn : n ≤ N)
    {β : ℝ}
    (hβ : β ∈ Set.Icc
      (-goldbachFejerCoreRadius N)
      (goldbachFejerCoreRadius N)) :
    (1 / 2 : ℝ) ≤
      (unitCharacter (n : ℤ) β).re := by
  rw [unitCharacter_nat_re]
  let θ : ℝ := 2 * Real.pi * (n : ℝ) * β
  have hθ :
      |θ| ≤ Real.pi / 3 := by
    exact abs_goldbach_phase_le_pi_div_three hn hβ
  have hθπ : |θ| ≤ Real.pi :=
    hθ.trans (by nlinarith [Real.pi_nonneg])
  have hmemθ : |θ| ∈ Set.Icc (0 : ℝ) Real.pi :=
    ⟨abs_nonneg _, hθπ⟩
  have hmemthird :
      Real.pi / 3 ∈ Set.Icc (0 : ℝ) Real.pi := by
    constructor <;> nlinarith [Real.pi_nonneg]
  calc
    (1 / 2 : ℝ) = Real.cos (Real.pi / 3) := by
      symm
      exact Real.cos_pi_div_three
    _ ≤ Real.cos |θ| :=
      Real.antitoneOn_cos hmemθ hmemthird hθ
    _ = Real.cos θ := Real.cos_abs θ

/-- The complete integer exponential kernel has real part at least
`(N+1)/2` throughout the core interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf516f0e84b56741728594781af922e362708f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
