# continuousOn_cosKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d2a977dd5866de26258a555078d8377ab4c4bea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a74ce960-ea3c-2b28-0bba-0f8811fa011a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e45ab0e7-b2fc-2891-9835-2917c66640f2",
  "kind": "lemma",
  "lexical_name": "continuousOn_cosKernel",
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
  "slug": "continuouson-coskernel--a6b57973a6c441d61c33b5ec",
  "source": {
    "blob": "1d2a977dd5866de26258a555078d8377ab4c4bea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 120,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantc49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6b57973a6c441d61c33b5ecd5d64d9df7d4758746d709d87904f0909b434fcf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantc49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e45ab0e7-b2fc-2891-9835-2917c66640f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuousOn_cosKernel (a : UnitAddCircle) : ContinuousOn (cosKernel a) (Ioi 0) := by
  induction a using QuotientAddGroup.induction_on with | H a' =>
  apply continuous_re.comp_continuousOn (f := fun x ↦ (cosKernel a' x : ℂ))
  simp only [cosKernel_def]
  refine continuousOn_of_forall_continuousAt (fun x hx ↦ ?_)
  exact (continuousAt_jacobiTheta₂ a' <| by simpa).comp
    (f := fun u : ℝ ↦ ((a' : ℂ), I * u)) (by fun_prop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantc49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantc49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d2a977dd5866de26258a555078d8377ab4c4bea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
