# AnalyticSet.iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ada26c-38ed-a2b8-71d2-e2585dfb6f51",
  "kind": "theorem",
  "lexical_name": "AnalyticSet.iUnion",
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
  "slug": "analyticset-iunion--e21af797012dedf1356db6bd",
  "source": {
    "blob": "a992dd64a895591bbde7cc6456a1648546ef2862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 293,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e21af797012dedf1356db6bde977d73b8c2a9b21cfd3fcc8c3f1b6a02d513a04",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ada26c-38ed-a2b8-71d2-e2585dfb6f51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticSet.iUnion [Countable ι] {s : ι → Set α} (hs : ∀ n, AnalyticSet (s n)) :
    AnalyticSet (⋃ n, s n) := by
  /- For the proof, write each `s n` as the continuous image under a map `f n` of a
    Polish space `β n`. The union space `γ = Σ n, β n` is also Polish, and the map `F : γ → α` which
    coincides with `f n` on `β n` sends it to `⋃ n, s n`. -/
  choose β hβ h'β f f_cont f_range using fun n =>
    analyticSet_iff_exists_polishSpace_range.1 (hs n)
  let γ := Σ n, β n
  let F : γ → α := fun ⟨n, x⟩ ↦ f n x
  have F_cont : Continuous F := continuous_sigma f_cont
  have F_range : range F = ⋃ n, s n := by
    simp only [γ, F, range_sigma_eq_iUnion_range, f_range]
  rw [← F_range]
  exact analyticSet_range_of_polishSpace F_cont

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a992dd64a895591bbde7cc6456a1648546ef2862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
