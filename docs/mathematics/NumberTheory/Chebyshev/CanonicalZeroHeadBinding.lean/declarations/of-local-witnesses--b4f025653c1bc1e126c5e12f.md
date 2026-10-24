# of_local_witnesses

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da118ec1cef46a373c962da4b8ef1f670c7b93e53014ba80f1b7971548966ac8",
  "kind": "def",
  "lexical_name": "of_local_witnesses",
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
  "slug": "of-local-witnesses--b4f025653c1bc1e126c5e12f",
  "source": {
    "blob": "bdd3758a97c015385ab8d7381dda0882cfceeaa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4f025653c1bc1e126c5e12ffc1f36b7d87984fd8e7fc73590abc917930df2a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da118ec1cef46a373c962da4b8ef1f670c7b93e53014ba80f1b7971548966ac8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def of_local_witnesses (T : ℚ) {k : ℕ} (rows : Fin k → WeightedInput)
    (hgeometry : GRWTSK.Analysis.Complex.RationalDiskSeparation.verify T
      (fun i => (rows i).point.center) (fun i => (rows i).point.coordinateError) = true)
    (hloc : LocalWitnesses rows)
    (hcount : heightCount (T : ℝ) ≤ ∑ i, (rows i).weight) : HeadBinding (T : ℝ) rows := by
  classical
  let center := fun i => (rows i).point.center
  let radius := fun i => (rows i).point.coordinateError
  have hg := (GRWTSK.Analysis.Complex.RationalDiskSeparation.verify_iff T center radius).mp hgeometry
  have hheight (i : Fin k) : height (witness rows hloc i) ≤ (T : ℝ) :=
    GRWTSK.Analysis.Complex.RationalDiskSeparation.abs_im_le_cutoff T center radius hg i
      (witness rows hloc i).1 (witness_spec rows hloc i).1
  let f : Fin k → ↥(heightHead (T : ℝ)) := fun i =>
    ⟨witness rows hloc i, (mem_heightHead _ _).mpr (hheight i)⟩
  have hinj : Function.Injective f := by
    intro i j he
    have he' : (witness rows hloc i).1 = (witness rows hloc j).1 :=
      congrArg (fun z : ↥(heightHead (T : ℝ)) => z.1.1) he
    exact GRWTSK.Analysis.Complex.RationalDiskSeparation.witnesses_injective
      T center radius hg (fun i => (witness rows hloc i).1)
      (fun i => (witness_spec rows hloc i).1) he'
  have htotal : (∑ z : ↥(heightHead (T : ℝ)), multiplicity z.1) ≤ ∑ i, (rows i).weight := by
    rw [head_subtype_mass]
    exact hcount
  obtain ⟨hb, hw⟩ := bijective_and_weights_eq
    (fun z : ↥(heightHead (T : ℝ)) => multiplicity z.1)
    (fun z => multiplicity_pos z.1) (fun i => (rows i).weight) f hinj
    (fun i => (witness_spec rows hloc i).2) htotal
  exact { index := Equiv.ofBijective f hb
          weight_eq := hw
          coordinate := fun i => (witness_spec rows hloc i).1 }

/-- The budget must saturate: this is an equality conclusion, not an input. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalZeroHeadBinding.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdd3758a97c015385ab8d7381dda0882cfceeaa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
