# integrable_llr_tilted_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10d76d1ddf3b944010ccdf2a404ebd671f0fa340",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c29b35e-e7e8-48a1-af6f-ae6a90a7669a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fb1620e-f5c0-d087-4c86-e7996667ff89",
  "kind": "lemma",
  "lexical_name": "integrable_llr_tilted_left",
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
  "slug": "integrable-llr-tilted-left--f08b490fbe1ea718f4e55614",
  "source": {
    "blob": "10d76d1ddf3b944010ccdf2a404ebd671f0fa340",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f08b490fbe1ea718f4e55614d1ac0c561b731135db58d0628f4875b1c8bdaad4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fb1620e-f5c0-d087-4c86-e7996667ff89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_llr_tilted_left [IsFiniteMeasure μ] [SigmaFinite ν]
    (hμν : μ ≪ ν) (hf : Integrable f μ) (h_int : Integrable (llr μ ν) μ)
    (hfμ : Integrable (fun x ↦ exp (f x)) μ) (hfν : AEMeasurable f ν) :
    Integrable (llr (μ.tilted f) ν) μ := by
  rw [integrable_congr (llr_tilted_left hμν hfμ hfν)]
  exact Integrable.add (hf.sub (integrable_const _)) h_int

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variant9ceb84afd0867be311d2faa2b2dff904143b1b4aeff8fd5cd65515fa785b4c29.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10d76d1ddf3b944010ccdf2a404ebd671f0fa340` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
