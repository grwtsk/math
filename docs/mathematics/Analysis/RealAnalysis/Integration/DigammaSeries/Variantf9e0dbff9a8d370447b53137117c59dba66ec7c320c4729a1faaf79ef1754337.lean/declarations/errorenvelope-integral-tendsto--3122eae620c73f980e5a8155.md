# errorEnvelope_integral_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f850a6724d3ea807c539e9e8902e7d4e27ce803c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3fe9690-e0bd-fcf7-bbdf-a6b20486a071",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:66a43416-9d52-ca03-b1b7-863fe777a1fb",
  "kind": "theorem",
  "lexical_name": "errorEnvelope_integral_tendsto",
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
  "slug": "errorenvelope-integral-tendsto--3122eae620c73f980e5a8155",
  "source": {
    "blob": "f850a6724d3ea807c539e9e8902e7d4e27ce803c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3122eae620c73f980e5a8155d3578842f59f7fcfc4ac461a1cee607c23b3a884",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66a43416-9d52-ca03-b1b7-863fe777a1fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem errorEnvelope_integral_tendsto {a b : ℝ} (ha : 0 < a) (hb : 0 < b) :
    Tendsto (fun n : ℕ ↦ ∫ x : ℝ in Ioi 0, errorEnvelope n a b x) atTop (𝓝 0) := by
  have ht := tendsto_integral_of_dominated_convergence
    (fun x : ℝ ↦ Real.exp (-x) * x ^ (a - 1) + Real.exp (-x) * x ^ (b - 1))
    (fun n ↦ (errorEnvelope_integrable ha hb n).aestronglyMeasurable)
    ((Real.GammaIntegral_convergent ha).add (Real.GammaIntegral_convergent hb))
    (fun n ↦ (ae_restrict_iff' measurableSet_Ioi).mpr (ae_of_all _ fun x hx ↦
      errorEnvelope_bound n a b hx))
    (f := fun _ ↦ (0 : ℝ)) ?_
  · simpa using ht
  · apply (ae_restrict_iff' measurableSet_Ioi).mpr
    filter_upwards with x hx
    simpa [errorEnvelope] using
      ((tendsto_const_nhds (x := Real.exp (-x))).sub (eulerKernel_tendsto x hx)).mul_const
        (x ^ (a - 1) + x ^ (b - 1))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DigammaSeries/Variantf9e0dbff9a8d370447b53137117c59dba66ec7c320c4729a1faaf79ef1754337.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f850a6724d3ea807c539e9e8902e7d4e27ce803c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
