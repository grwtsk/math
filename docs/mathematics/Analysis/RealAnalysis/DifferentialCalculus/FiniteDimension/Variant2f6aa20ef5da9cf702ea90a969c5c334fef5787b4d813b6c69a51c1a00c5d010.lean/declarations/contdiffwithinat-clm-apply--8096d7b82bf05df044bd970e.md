# contDiffWithinAt_clm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31f06d69866f697acc4f53fcdbd7c0a0feb5357f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f6aa20ef5da9cf702ea90a969c5c334fef5787b4d813b6c69a51c1a00c5d010.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95381217-6df1-a760-26e3-9d5bb15c4dfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2a4e5d7-0b5e-a166-afad-6c5c7837605d",
  "kind": "theorem",
  "lexical_name": "contDiffWithinAt_clm_apply",
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
  "slug": "contdiffwithinat-clm-apply--8096d7b82bf05df044bd970e",
  "source": {
    "blob": "31f06d69866f697acc4f53fcdbd7c0a0feb5357f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2f6aa20ef5da9cf702ea90a969c5c334fef5787b4d813b6c69a51c1a00c5d010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8096d7b82bf05df044bd970e1c23cdfd9b2485512850953cb12ce882da69e858",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2f6aa20ef5da9cf702ea90a969c5c334fef5787b4d813b6c69a51c1a00c5d010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2a4e5d7-0b5e-a166-afad-6c5c7837605d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffWithinAt_clm_apply {f : D → E →L[𝕜] F} {s : Set D} {x : D} [FiniteDimensional 𝕜 E] :
    ContDiffWithinAt 𝕜 n f s x ↔ ∀ y, ContDiffWithinAt 𝕜 n (fun x ↦ f x y) s x := by
  refine ⟨fun h y => h.clm_apply contDiffWithinAt_const, fun h => ?_⟩
  let d := finrank 𝕜 E
  have hd : d = finrank 𝕜 (Fin d → 𝕜) := (finrank_fin_fun 𝕜).symm
  let e₁ := ContinuousLinearEquiv.ofFinrankEq hd
  let e₂ := (e₁.arrowCongr (1 : F ≃L[𝕜] F)).trans (ContinuousLinearEquiv.piRing (Fin d))
  rw [← id_comp f, ← e₂.symm_comp_self]
  exact e₂.symm.contDiff.comp_contDiffWithinAt (contDiffWithinAt_pi.mpr fun i ↦ h _)

/-- A family of continuous linear maps is `C^n` on `s` if and only if all its applications are. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2f6aa20ef5da9cf702ea90a969c5c334fef5787b4d813b6c69a51c1a00c5d010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteDimension/Variant2f6aa20ef5da9cf702ea90a969c5c334fef5787b4d813b6c69a51c1a00c5d010.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f06d69866f697acc4f53fcdbd7c0a0feb5357f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
