# periodicB2_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9152425-eec2-b8db-7003-a61b0b448736",
  "kind": "theorem",
  "lexical_name": "periodicB2_hasDerivAt",
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
  "slug": "periodicb2-hasderivat--11c87e71d70ae087da33644e",
  "source": {
    "blob": "590ba946f675e60246a908173d40eaf714f12611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 65,
    "path": "GRWTSK/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11c87e71d70ae087da33644ee14f0c7e53fea789f28fd191f4a9580f0c95dc60",
  "verification": {
    "reference": "docs/verification/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9152425-eec2-b8db-7003-a61b0b448736`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem periodicB2_hasDerivAt {x : ℝ} (hx : x ≠ (⌊x⌋ : ℝ)) :
    HasDerivAt periodicB2 (2 * periodicB1 x) x := by
  have hlo : (⌊x⌋ : ℝ) < x := (Int.floor_le x).lt_of_ne hx.symm
  have hhi : x < (⌊x⌋ : ℝ) + 1 := Int.lt_floor_add_one x
  have he : periodicB2 =ᶠ[nhds x]
      (fun y : ℝ => (y - (⌊x⌋ : ℝ)) ^ 2 - (y - (⌊x⌋ : ℝ)) + 1 / 6) := by
    filter_upwards [Ioo_mem_nhds hlo hhi] with y hy
    have hf := Int.floor_eq_on_Ico ⌊x⌋ y ⟨hy.1.le, hy.2⟩
    simp [periodicB2, Int.fract, hf]
  have hd := (((hasDerivAt_id x).sub_const (⌊x⌋ : ℝ)).pow 2).sub
    ((hasDerivAt_id x).sub_const (⌊x⌋ : ℝ))
  have hd' := hd.add_const (1 / 6 : ℝ)
  convert hd'.congr_of_eventuallyEq he using 1
  · unfold periodicB1 Int.fract
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/SourceActualEulerOne/Varianta0e524dcc6de5c5e0597174d5bbef023d7c06a83650fe0e9f4034211e8624c97.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `590ba946f675e60246a908173d40eaf714f12611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
