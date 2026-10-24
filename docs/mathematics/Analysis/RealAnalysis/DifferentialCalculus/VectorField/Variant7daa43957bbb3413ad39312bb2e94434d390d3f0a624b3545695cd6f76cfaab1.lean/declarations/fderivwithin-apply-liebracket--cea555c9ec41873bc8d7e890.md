# fderivWithin_apply_lieBracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f034ef60f932d01fae9b3be6d264c29b248335a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7daa43957bbb3413ad39312bb2e94434d390d3f0a624b3545695cd6f76cfaab1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99843220-d58a-7e55-ad9d-658715afa7e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b090f81a-a824-606a-49f0-f69a942058e1",
  "kind": "lemma",
  "lexical_name": "fderivWithin_apply_lieBracket",
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
  "slug": "fderivwithin-apply-liebracket--cea555c9ec41873bc8d7e890",
  "source": {
    "blob": "7f034ef60f932d01fae9b3be6d264c29b248335a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 247,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant7daa43957bbb3413ad39312bb2e94434d390d3f0a624b3545695cd6f76cfaab1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cea555c9ec41873bc8d7e8907e619632896c09c40c78dcd1204f3667ea11f458",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant7daa43957bbb3413ad39312bb2e94434d390d3f0a624b3545695cd6f76cfaab1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b090f81a-a824-606a-49f0-f69a942058e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fderivWithin_apply_lieBracket {f : E → F} {n : ℕ∞ω}
    (hf : ContDiffWithinAt 𝕜 n f s x) (hn : minSmoothness 𝕜 2 ≤ n)
    (hs : UniqueDiffOn 𝕜 s) (hxs' : x ∈ closure (interior s)) (hxs : x ∈ s)
    (hW : DifferentiableWithinAt 𝕜 W s x) (hV : DifferentiableWithinAt 𝕜 V s x) :
    fderivWithin 𝕜 f s x (lieBracketWithin 𝕜 V W s x) =
      fderivWithin 𝕜 (fun x ↦ fderivWithin 𝕜 f s x (W x)) s x (V x) -
        fderivWithin 𝕜 (fun x ↦ fderivWithin 𝕜 f s x (V x)) s x (W x) := by
  apply fderivWithin_apply_lieBracket_of_isSymmSndFDerivWithinAt <;> try assumption
  exacts [hf.of_le <| le_minSmoothness.trans hn, hf.isSymmSndFDerivWithinAt hn hs hxs' hxs]

/-- The differentiation operator along `[W, V]`
is the commutator of the differentiation operators along `W` and `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant7daa43957bbb3413ad39312bb2e94434d390d3f0a624b3545695cd6f76cfaab1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/VectorField/Variant7daa43957bbb3413ad39312bb2e94434d390d3f0a624b3545695cd6f76cfaab1.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f034ef60f932d01fae9b3be6d264c29b248335a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
