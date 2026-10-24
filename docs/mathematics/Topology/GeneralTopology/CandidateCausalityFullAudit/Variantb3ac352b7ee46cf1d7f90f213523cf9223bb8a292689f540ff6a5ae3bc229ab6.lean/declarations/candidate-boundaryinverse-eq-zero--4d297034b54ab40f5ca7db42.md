# candidate_boundaryInverse_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bd37c0c2eaae974e96e5b3f98eae13b3c42461a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b528db95-573e-a823-0d0a-e1e07fa99514",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fb07d26-a5af-d1e4-5f6e-43b7fc4534af",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_eq_zero",
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
  "slug": "candidate-boundaryinverse-eq-zero--4d297034b54ab40f5ca7db42",
  "source": {
    "blob": "5bd37c0c2eaae974e96e5b3f98eae13b3c42461a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d297034b54ab40f5ca7db423725e97918bf0b3cbed5679cad8b405a09a45b4a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fb07d26-a5af-d1e4-5f6e-43b7fc4534af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_eq_zero (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (x : ℝ) (hx : x < 0) :
    boundaryInverse (candidate X ε h) x = 0 := by
  obtain ⟨φ, hφ, htop, hbot, hb⟩ := candidate_boundary_majorant X hX ε h hε hh hh1
  exact boundaryInverse_eq_zero_of_neg (candidate X ε h)
    (candidate_differentiableAt X ε h hε hh.le) φ hφ hb htop hbot x hx

end
end CandidateCausalityScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @CandidateCausalityScratch.boundaryInverse
#print CandidateCausalityScratch.boundaryInverse
#print axioms CandidateCausalityScratch.boundaryInverse
#check @CandidateCausalityScratch.boundaryInverse_eq_zero_of_neg
#print CandidateCausalityScratch.boundaryInverse_eq_zero_of_neg
#print axioms CandidateCausalityScratch.boundaryInverse_eq_zero_of_neg
#check @CandidateCausalityScratch.candidate_boundary_majorant
#print CandidateCausalityScratch.candidate_boundary_majorant
#print axioms CandidateCausalityScratch.candidate_boundary_majorant
#check @CandidateCausalityScratch.candidate_boundaryInverse_eq_zero
#print CandidateCausalityScratch.candidate_boundaryInverse_eq_zero
#print axioms CandidateCausalityScratch.candidate_boundaryInverse_eq_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd37c0c2eaae974e96e5b3f98eae13b3c42461a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
