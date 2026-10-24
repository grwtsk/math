# le_iff_derivFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db8063dd-a011-9d79-c802-3d37ebfacec9",
  "kind": "theorem",
  "lexical_name": "le_iff_derivFamily",
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
  "slug": "le-iff-derivfamily--58fca895ae6a77e98a1e4252",
  "source": {
    "blob": "0c346a3ded4db390334527366b4a8814fb2fc3ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variant0e781fd7399ac2cd27713ffababfbcfe3dae49297d9d6b02e4281f530c6492d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58fca895ae6a77e98a1e4252cd90cbb79abf5bf5818337a51ccb1d44decfc923",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variant0e781fd7399ac2cd27713ffababfbcfe3dae49297d9d6b02e4281f530c6492d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db8063dd-a011-9d79-c802-3d37ebfacec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_iff_derivFamily [Small.{u} ι] (H : ∀ i, IsNormal (f i)) {a} :
    (∀ i, f i a ≤ a) ↔ ∃ o, derivFamily f o = a :=
  ⟨fun ha => by
    suffices ∀ (o), a ≤ derivFamily f o → ∃ o, derivFamily f o = a from
      this a (isNormal_derivFamily _).strictMono.le_apply
    intro o
    induction o using limitRecOn with
    | zero =>
      intro h₁
      refine ⟨0, le_antisymm ?_ h₁⟩
      rw [derivFamily_zero]
      exact nfpFamily_le_fp (fun i => (H i).monotone) zero_le ha
    | add_one o IH =>
      intro h₁
      rcases le_or_gt a (derivFamily f o) with h | h
      · exact IH h
      refine ⟨o + 1, le_antisymm ?_ h₁⟩
      rw [derivFamily_add_one]
      exact nfpFamily_le_fp (fun i => (H i).monotone) (succ_le_of_lt h) ha
    | limit o l IH =>
      intro h₁
      rcases eq_or_lt_of_le h₁ with h | h
      · exact ⟨_, h.symm⟩
      rw [derivFamily_limit _ l, ← not_le, Ordinal.iSup_le_iff, not_forall] at h
      obtain ⟨o', h⟩ := h
      exact IH o' o'.2 (le_of_not_ge h),
    fun ⟨_, e⟩ i => e ▸ (derivFamily_fp (H i) _).le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variant0e781fd7399ac2cd27713ffababfbcfe3dae49297d9d6b02e4281f530c6492d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedPoint/Variant0e781fd7399ac2cd27713ffababfbcfe3dae49297d9d6b02e4281f530c6492d5.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c346a3ded4db390334527366b4a8814fb2fc3ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
