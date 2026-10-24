# nhdsWithin_lt_le_nhdsWithin_stolzSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac7250fe-0934-ede9-3689-d0805dad9aa5",
  "kind": "theorem",
  "lexical_name": "nhdsWithin_lt_le_nhdsWithin_stolzSet",
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
  "slug": "nhdswithin-lt-le-nhdswithin-stolzset--f28a055f427fd7993672518d",
  "source": {
    "blob": "de589450eee0c96e29c82e8d75a80714666b345b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f28a055f427fd7993672518d6383e881538742459439aec24f8d59e7c4f75c26",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac7250fe-0934-ede9-3689-d0805dad9aa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhdsWithin_lt_le_nhdsWithin_stolzSet {M : ℝ} (hM : 1 < M) :
    (𝓝[<] 1).map ofReal ≤ 𝓝[stolzSet M] 1 := by
  rw [← tendsto_id']
  refine tendsto_map' <| tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within ofReal
    (tendsto_nhdsWithin_of_tendsto_nhds <| ofRealCLM.continuous.tendsto' 1 1 rfl) ?_
  simp only [eventually_iff, mem_nhdsWithin]
  refine ⟨Set.Ioo 0 2, isOpen_Ioo, by simp, fun x hx ↦ ?_⟩
  push _ ∈ _ at hx
  simp only [Set.mem_ofPred_eq, stolzSet, ← ofReal_one, ← ofReal_sub, norm_real,
    norm_of_nonneg hx.1.1.le, norm_of_nonneg <| (sub_pos.mpr hx.2).le]
  exact ⟨hx.2, lt_mul_left (sub_pos.mpr hx.2) hM⟩

-- An ugly technical lemma
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Varianta23c77186773ba84b25fda69717a30cc2ef7e3f8ae77b246e464731aafcbc491.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de589450eee0c96e29c82e8d75a80714666b345b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
