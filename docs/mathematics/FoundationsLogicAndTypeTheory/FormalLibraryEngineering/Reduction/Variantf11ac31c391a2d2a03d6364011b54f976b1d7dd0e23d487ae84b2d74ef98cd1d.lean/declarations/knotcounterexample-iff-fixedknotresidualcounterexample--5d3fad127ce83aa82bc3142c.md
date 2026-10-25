# knotCounterexample_iff_fixedKnotResidualCounterexample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ed7c88ddf7adc1d683aa6c7bbe557ce2fa21566",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b36ab4a-15ee-5d3f-7949-5edefb4cdf0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:add3a05a-bbb4-fe0f-a0f0-e0ef4116ac13",
  "kind": "theorem",
  "lexical_name": "knotCounterexample_iff_fixedKnotResidualCounterexample",
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
  "slug": "knotcounterexample-iff-fixedknotresidualcounterexample--5d3fad127ce83aa82bc3142c",
  "source": {
    "blob": "3ed7c88ddf7adc1d683aa6c7bbe557ce2fa21566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d3fad127ce83aa82bc3142c9e290e28118a92d1fba948b09ce2be3c5faa60af",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:add3a05a-bbb4-fe0f-a0f0-e0ef4116ac13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem knotCounterexample_iff_fixedKnotResidualCounterexample
    (R : CurrentReduction T)
    {K : T.Knot}
    (hK : T.Nontrivial K) :
    T.KnotCounterexample K ↔ T.FixedKnotResidualCounterexample K := by
  constructor
  · intro hcounterexample
    refine ⟨R.residualInvariants hK hcounterexample, ?_⟩
    rcases hcounterexample with ⟨r, s, hcosmetic⟩
    rcases R.residualSlopes hK hcosmetic with hrs | hrs
    · rcases hrs with ⟨rfl, rfl⟩
      exact hcosmetic.2
    · rcases hrs with ⟨rfl, rfl⟩
      exact T.fillingsHomeomorphic_symm hcosmetic.2
  · exact T.fixedKnotResidualCounterexample_is_knotCounterexample

/--
The global conjecture fails exactly when a hyperbolic residual counterexample
exists.  The forward implication is the explicit replacement capability; the
reverse implication is the direct observation that such a package already is
a nontrivial knot counterexample.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ed7c88ddf7adc1d683aa6c7bbe557ce2fa21566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
