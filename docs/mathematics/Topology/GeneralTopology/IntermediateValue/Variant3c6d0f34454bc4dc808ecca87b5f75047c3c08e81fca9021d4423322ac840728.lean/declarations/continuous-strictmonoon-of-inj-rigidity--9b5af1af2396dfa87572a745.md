# Continuous.strictMonoOn_of_inj_rigidity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81516cad-5b89-c8a5-d913-8525ebc4c7fe",
  "kind": "theorem",
  "lexical_name": "Continuous.strictMonoOn_of_inj_rigidity",
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
  "slug": "continuous-strictmonoon-of-inj-rigidity--9b5af1af2396dfa87572a745",
  "source": {
    "blob": "c5bf572783901ffd21b3561e225ac461290c80b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 819,
    "line": 792,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b5af1af2396dfa87572a745b597ed4947fcd649022b89d13c33625ebe1f9f89",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81516cad-5b89-c8a5-d913-8525ebc4c7fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 792–819.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.strictMonoOn_of_inj_rigidity {f : α → δ}
    (hf_c : Continuous f) (hf_i : Injective f) {a b : α} (hab : a < b)
    (hf_mono : StrictMonoOn f (Icc a b)) : StrictMono f := by
  intro x y hxy
  let s := min a x
  let t := max b y
  have hsa : s ≤ a := min_le_left a x
  have hbt : b ≤ t := le_max_left b y
  have hf_mono_st : StrictMonoOn f (Icc s t) ∨ StrictAntiOn f (Icc s t) := by
    have : Fact (s ≤ t) := ⟨hsa.trans <| hbt.trans' hab.le⟩
    have := Continuous.strictMono_of_inj_boundedOrder' (f := Set.domRestrict (Icc s t) f)
      hf_c.continuousOn.domRestrict hf_i.injOn.injective
    exact this.imp strictMono_domRestrict.mp strictAntiOn_iff_strictAnti.mpr
  have (h : StrictAntiOn f (Icc s t)) : False := by
    have : Icc a b ⊆ Icc s t := Icc_subset_Icc hsa hbt
    replace : StrictAntiOn f (Icc a b) := StrictAntiOn.mono h this
    replace : IsAntichain (· ≤ ·) (Icc a b) :=
      IsAntichain.of_strictMonoOn_antitoneOn hf_mono this.antitoneOn
    exact this.not_lt (left_mem_Icc.mpr (le_of_lt hab)) (right_mem_Icc.mpr (le_of_lt hab)) hab
  replace hf_mono_st : StrictMonoOn f (Icc s t) := hf_mono_st.resolve_right this
  have hsx : s ≤ x := min_le_right a x
  have hyt : y ≤ t := le_max_right b y
  replace : Icc x y ⊆ Icc s t := Icc_subset_Icc hsx hyt
  replace : StrictMonoOn f (Icc x y) := StrictMonoOn.mono hf_mono_st this
  exact this (left_mem_Icc.mpr (le_of_lt hxy)) (right_mem_Icc.mpr (le_of_lt hxy)) hxy

/-- Suppose `f : [a, b] → δ` is
continuous and injective. Then `f` is strictly monotone (increasing) if `f(a) ≤ f(b)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant3c6d0f34454bc4dc808ecca87b5f75047c3c08e81fca9021d4423322ac840728.lean#L792).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5bf572783901ffd21b3561e225ac461290c80b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
