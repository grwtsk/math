# checkWithin_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08b3fbed-002f-5388-5339-4ee0a8d3714a",
  "kind": "theorem",
  "lexical_name": "checkWithin_sound",
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
  "slug": "checkwithin-sound--896318c8429242db8f26a871",
  "source": {
    "blob": "5fb43bafae3c904f7934359c58d57b6cea10b878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:896318c8429242db8f26a871a827ce2ebdf811af440059d336f34832733632e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08b3fbed-002f-5388-5339-4ee0a8d3714a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkWithin_sound {family : List Member} {T x h ε : ℚ}
    {tr : RationalTentFamily.Trace} {d : CoordinateData}
    (hc : checkWithin family T x h tr d ε = true)
    (hloc : LocalWitnesses family d)
    (hcount : heightCount (T : ℝ) ≤ recordMass family) :
    ‖(∑ z ∈ heightHead (T : ℝ), (multiplicity z : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) z.1) -
      toComplex (RationalTentFamily.output family tr)‖ ≤ (ε : ℝ) := by
  classical
  have hp : checkGeometry family T d = true ∧
      RationalTentEnclosure.checkWithin family x h tr d ε = true := by
    simpa only [checkWithin, Bool.and_eq_true] using hc
  obtain ⟨e, hclose, hmult⟩ := exists_canonical_equiv hp.1 hloc hcount
  let ρ : ℕ → ℂ := fun i =>
    if hi : i ∈ Finset.range family.length then (e ⟨i, hi⟩).1.1 else 0
  have heq : ∀ i : RecordIndex family, ρ i = (e i).1.1 := by
    intro i
    simp only [ρ, dif_pos i.2]
  have hr : ∀ i ∈ Finset.range family.length,
      ‖ρ i - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ) := by
    intro i hi
    rw [heq ⟨i, hi⟩]
    exact hclose ⟨i, hi⟩
  have hstrip : ∀ i ∈ Finset.range family.length, (ρ i).re ≤ 1 := by
    intro i hi
    rw [heq ⟨i, hi⟩]
    exact (point_mem_strip (e ⟨i, hi⟩).1).2.le
  have ht := RationalTentEnclosure.reindexed_source_sound hp.2
    (fun z : Head (T : ℝ) => z.1.1) (fun z : Head (T : ℝ) => multiplicity z.1)
    e ρ heq (fun i => (hmult i).symm) hstrip hr
  have hs : (∑ z : Head (T : ℝ), (multiplicity z.1 : ℂ) *
      tentKernel (x : ℝ) (h : ℝ) z.1.1) =
      ∑ z ∈ heightHead (T : ℝ), (multiplicity z : ℂ) *
        tentKernel (x : ℝ) (h : ℝ) z.1 :=
    Finset.sum_attach _ _
  rwa [hs] at ht

/-- A separately certified numerical upper count U can be squeezed by record mass.
Checking U alone is not proof that it bounds the actual canonical count. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalTentEvaluation.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fb43bafae3c904f7934359c58d57b6cea10b878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
