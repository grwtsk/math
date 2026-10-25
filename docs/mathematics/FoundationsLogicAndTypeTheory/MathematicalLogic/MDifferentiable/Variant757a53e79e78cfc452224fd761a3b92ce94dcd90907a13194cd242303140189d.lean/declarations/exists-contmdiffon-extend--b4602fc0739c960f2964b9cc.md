# exists_contMDiffOn_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecd5da47-5491-31e2-5ed2-89cb317db88d",
  "kind": "lemma",
  "lexical_name": "exists_contMDiffOn_extend",
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
  "slug": "exists-contmdiffon-extend--b4602fc0739c960f2964b9cc",
  "source": {
    "blob": "1dbddb9c92d0b28a17ea483b67f12d4fb1ab9031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 723,
    "line": 709,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4602fc0739c960f2964b9cc0bbfb2f2a2e21d52408e165244f6dd0eb6190490",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecd5da47-5491-31e2-5ed2-89cb317db88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 709–723.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_contMDiffOn_extend [(x : M) → Module 𝕜 (V x)] [VectorBundle 𝕜 F V]
    [ContMDiffVectorBundle k F V I] {x₀ : M} (σ₀ : V x₀) :
    ∃ s ∈ 𝓝 x₀, CMDiff[s] k (T% (extend F σ₀)) := by
  set t := trivializationAt F V x₀
  refine ⟨t.baseSet, ?_, ?_⟩
  · refine t.open_baseSet.mem_nhds ?_
    exact FiberBundle.mem_baseSet_trivializationAt' x₀
  suffices CMDiff[t.baseSet] k (fun x ↦ (t ⟨x, extend F σ₀ x⟩).2) by
    intro x hx
    rw [t.contMDiffWithinAt_section _ hx]
    exact this x hx
  let w : F := (t ⟨x₀, σ₀⟩).2
  have : CMDiff[t.baseSet] k (fun (_x : M) ↦ w) := contMDiffOn_const
  exact this.congr (fun x hx ↦ by simp [extend, t, w, hx])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean#L709).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbddb9c92d0b28a17ea483b67f12d4fb1ab9031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
