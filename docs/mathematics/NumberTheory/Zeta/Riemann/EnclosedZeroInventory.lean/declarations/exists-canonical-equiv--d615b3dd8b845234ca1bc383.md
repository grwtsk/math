# exists_canonical_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b0f1754-afd9-2212-429e-2211275a157e",
  "kind": "theorem",
  "lexical_name": "exists_canonical_equiv",
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
  "slug": "exists-canonical-equiv--d615b3dd8b845234ca1bc383",
  "source": {
    "blob": "64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d615b3dd8b845234ca1bc383a1fe4cbb38032bbf72c8a6654c10e4c13b58eedc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0f1754-afd9-2212-429e-2211275a157e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_canonical_equiv {family : List Member} {T : ℚ} {d : CoordinateData}
    (hgeom : checkGeometry family T d = true) (hloc : LocalWitnesses family d)
    (hcount : heightCount (T : ℝ) ≤ recordMass family) :
    ∃ e : RecordIndex family ≃ Head (T : ℝ),
      (∀ i, ‖(e i).1.1 - toComplex (memberAt family i).center‖ ≤ (radiusAt d i : ℝ)) ∧
      (∀ i, multiplicity (e i).1 = (memberAt family i).multiplicity) := by
  classical
  obtain ⟨_hT, _hlen, hheight, hsep⟩ := (checkGeometry_iff family T d).mp hgeom
  let points : RecordIndex family → ZeroPoint := fun i => Classical.choose (hloc i)
  have hclose : ∀ i, ‖(points i).1 - toComplex (memberAt family i).center‖ ≤
      (radiusAt d i : ℝ) := fun i => (Classical.choose_spec (hloc i)).1
  have hlower : ∀ i, (memberAt family i).multiplicity ≤ multiplicity (points i) :=
    fun i => (Classical.choose_spec (hloc i)).2
  have hmem : ∀ i : RecordIndex family, points i ∈ heightHead (T : ℝ) := by
    intro i
    apply (mem_heightHead _ _).mpr
    exact RationalDiskSeparation.enclosed_height_le (hheight i i.2) (hclose i)
  let f : RecordIndex family → Head (T : ℝ) := fun i => ⟨points i, hmem i⟩
  have hfi : Function.Injective f := by
    intro i j he
    by_contra hij
    have hv : (i : ℕ) ≠ (j : ℕ) := by
      intro hv; exact hij (Subtype.ext hv)
    have hn := RationalDiskSeparation.enclosed_points_ne
      (hsep i i.2 j j.2 hv) (hclose i) (hclose j)
    exact hn (congrArg (fun u : Head (T : ℝ) => u.1.1) he)
  have hc : (∑ z : Head (T : ℝ), multiplicity z.1) ≤
      ∑ i : RecordIndex family, (memberAt family i).multiplicity := by
    rw [sum_head_weights, sum_record_weights]
    exact hcount
  obtain ⟨e, he, hm⟩ :=
    GRWTSK.Algebra.BigOperators.PositiveWeightExhaustion.exists_equiv_of_mass_le f hfi
      (fun i => (memberAt family i).multiplicity) (fun z => multiplicity z.1)
      (fun z => multiplicity_pos z.1) hlower hc
  refine ⟨e, ?_, hm⟩
  intro i
  rw [he i]
  exact hclose i

/-- The independently supplied upper bound is forced to equality at the claimed mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/EnclosedZeroInventory.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e6b0ebe0a1923f8fc0d89f65bdb3942e32487b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
