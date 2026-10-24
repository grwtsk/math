# tendsto_smul_comp_nat_floor_of_tendsto_nsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc243c81-6a21-8371-37a2-45aebbc4fa7e",
  "kind": "lemma",
  "lexical_name": "tendsto_smul_comp_nat_floor_of_tendsto_nsmul",
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
  "slug": "tendsto-smul-comp-nat-floor-of-tendsto-nsmul--b4e1ff60e3c6c373d7cef26f",
  "source": {
    "blob": "e68edfcfdf903cdee0d61757e0922e384e43017b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 923,
    "line": 910,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4e1ff60e3c6c373d7cef26fb500d578ae321149b45dcb5b21a5eaf4062f9075",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc243c81-6a21-8371-37a2-45aebbc4fa7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 910–923.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_smul_comp_nat_floor_of_tendsto_nsmul [NormSMulClass ℤ K] [LinearOrder K]
    [IsStrictOrderedRing K] [FloorSemiring K] [HasSolidNorm K] {g : ℕ → R} {t : R}
    (hg : Tendsto (fun n : ℕ ↦ n • g n) atTop (𝓝 t)) :
    Tendsto (fun x : K ↦ x • g ⌊x⌋₊) atTop (𝓝 t) := by
  replace hg : Tendsto (fun n : ℕ ↦ (n : K) • g n) atTop (𝓝 t) := mod_cast hg
  apply tendsto_smul_congr_of_tendsto_left_cobounded_of_isBoundedUnder
    (hg.comp tendsto_nat_floor_atTop)
  · exact tendsto_natCast_atTop_cobounded.comp tendsto_nat_floor_atTop
  · apply isBoundedUnder_of_eventually_le (a := ‖(1 : K)‖)
    apply Eventually.mono _ (fun x h ↦ norm_le_norm_of_abs_le_abs h)
    simpa using ⟨0, fun _ h ↦ mod_cast Nat.abs_floor_sub_le h⟩

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variant6fab65b250967c4e4b5506f9688c6c0abc204a249cb0d7479256be9a6eded5a4.lean#L910).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e68edfcfdf903cdee0d61757e0922e384e43017b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
