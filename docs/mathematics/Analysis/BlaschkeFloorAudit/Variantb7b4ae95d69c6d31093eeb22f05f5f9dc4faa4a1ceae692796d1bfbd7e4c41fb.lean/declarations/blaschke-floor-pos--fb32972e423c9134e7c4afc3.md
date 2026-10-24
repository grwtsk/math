# blaschke_floor_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dde43ea112cb009333ff666b8b0b7095df81135",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ab43f6c-157c-0238-c5dc-7bfa337f728d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fabf7e7-a950-f8fc-0b32-e1aaf1116c13",
  "kind": "theorem",
  "lexical_name": "blaschke_floor_pos",
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
  "slug": "blaschke-floor-pos--fb32972e423c9134e7c4afc3",
  "source": {
    "blob": "3dde43ea112cb009333ff666b8b0b7095df81135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 47,
    "path": "GRWTSK/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb32972e423c9134e7c4afc3853c2bf0732df0f5c54b49a932ec234fbe50d2e5",
  "verification": {
    "reference": "docs/verification/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fabf7e7-a950-f8fc-0b32-e1aaf1116c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blaschke_floor_pos (z : ℂ) (hz : 0 < z.re) :
    0 < 2 * z.re / ‖1 + z‖ ^ 2 := by
  exact div_pos (mul_pos (by norm_num) hz)
    (sq_pos_of_pos (norm_pos_iff.mpr (reference_denominator_ne_zero z hz)))

end
end BlaschkeFloorScratch

set_option pp.proofs false
#print BlaschkeFloorScratch.blaschkeAtOne
#print axioms BlaschkeFloorScratch.blaschkeAtOne
#print BlaschkeFloorScratch.reference_denominator_ne_zero
#print axioms BlaschkeFloorScratch.reference_denominator_ne_zero
#print BlaschkeFloorScratch.reference_denominator_normSq
#print axioms BlaschkeFloorScratch.reference_denominator_normSq
#print BlaschkeFloorScratch.blaschke_deficit
#print axioms BlaschkeFloorScratch.blaschke_deficit
#print BlaschkeFloorScratch.factor_deficit_lower
#print axioms BlaschkeFloorScratch.factor_deficit_lower
#print BlaschkeFloorScratch.blaschke_floor_pos
#print axioms BlaschkeFloorScratch.blaschke_floor_pos
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BlaschkeFloorAudit/Variantb7b4ae95d69c6d31093eeb22f05f5f9dc4faa4a1ceae692796d1bfbd7e4c41fb.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dde43ea112cb009333ff666b8b0b7095df81135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
