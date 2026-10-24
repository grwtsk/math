# not_normalSpace_Iio_prod_Iic_omega_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c99a829-3f58-0227-f433-c800a23639e2",
  "kind": "theorem",
  "lexical_name": "not_normalSpace_Iio_prod_Iic_omega_one",
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
  "slug": "not-normalspace-iio-prod-iic-omega-one--a0c7a64283efd381041ec041",
  "source": {
    "blob": "e09e42b8e4f01df35a9d53c895415564146069a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0c7a64283efd381041ec041a428c3bed5de9999463fca82925c68eeca9dc120",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c99a829-3f58-0227-f433-c800a23639e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_normalSpace_Iio_prod_Iic_omega_one :
    ¬ NormalSpace (Iio.{u+1} ω₁ × Iic.{u+1} ω₁) := by
  intro
  let A : Set (Iio ω₁ × Iic ω₁) := {(a,b) | inc a = b}
  let B : Set (Iio ω₁ × Iic ω₁) := {(a,b) | b = ⊤}
  have hA : IsClosed A := isClosed_eq (inc_embedding.continuous.comp continuous_fst) continuous_snd
  have hB : IsClosed B := isClosed_eq continuous_snd continuous_const
  have hAB : Disjoint A B := by
    rw [disjoint_left]
    intro ⟨a, b⟩ (ha : inc a = b) (hb : b = ⊤)
    exact absurd (Subtype.ext_iff.mp (ha.trans hb)) a.2.ne
  obtain ⟨U, V, hU, hV, hAU, hBV, hUV⟩ := normal_separation hA hB hAB
  choose β hβ1 hβ2 using fun x => exists_lt_notMem_of_disjoint
    ((hV.preimage (.prodMk_right x)).mem_nhds (hBV rfl)) (hUV.preimage _) x
  let seq : ℕ → Iio ω₁ := Nat.rec ⟨0, (Cardinal.isSuccLimit_omega _).bot_lt⟩ fun _ ↦ β
  have hmono : Monotone (fun n => (seq n).1) :=
    monotone_nat_of_le_succ fun n => (Subtype.coe_lt_coe.mpr (hβ1 (seq n))).le
  have hbω₁ : ⨆ i, (seq i).1 < ω₁ := Ordinal.iSup_lt_omega_one fun n ↦ (seq n).2
  have htf : Tendsto (fun n => (seq n).1) atTop (𝓝 (⨆ i, (seq i).1)) :=
    tendsto_atTop_ciSup hmono ⟨ω₁, mem_upperBounds.mpr <| forall_mem_range.mpr fun n ↦ (seq n).2.le⟩
  have htprod : Tendsto (fun n => ((seq n, inc (seq (n + 1))) : Iio ω₁ × Iic ω₁))
      atTop (𝓝 (⟨_, hbω₁⟩, inc ⟨_, hbω₁⟩)) :=
    (IsInducing.subtypeVal.tendsto_nhds_iff.mpr htf).prodMk_nhds
      (IsInducing.subtypeVal.tendsto_nhds_iff.mpr
        (htf.comp (tendsto_add_atTop_nat 1)))
  obtain ⟨n, hn⟩ := (htprod.eventually (hU.mem_nhds (hAU rfl))).exists
  exact hβ2 (seq n) hn

/-!
With this result, the counterexamples below can be proven for topological spaces X and Y in
Type (u+1). We use Shrink to build versions of Iio.{1} ω₁ and Iic.{1} ω₁ in every universe
and make the results more general.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Omega1Space/Variantea673511a852bf6af3b02297081a701d92eeabe99c3f2d268b20dc02cbe21fd3.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e09e42b8e4f01df35a9d53c895415564146069a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
