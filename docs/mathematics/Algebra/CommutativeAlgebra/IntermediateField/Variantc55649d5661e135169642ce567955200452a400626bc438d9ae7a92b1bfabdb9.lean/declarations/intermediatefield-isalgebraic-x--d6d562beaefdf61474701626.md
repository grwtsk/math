# IntermediateField.isAlgebraic_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd7cfed4ff94caa50cfa13be10e6574a69af2f2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3881208-4d2e-c994-6884-6fc5ec439463",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a20d047f-d8c9-d44a-2fe2-10c5754b123e",
  "kind": "theorem",
  "lexical_name": "IntermediateField.isAlgebraic_X",
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
  "slug": "intermediatefield-isalgebraic-x--d6d562beaefdf61474701626",
  "source": {
    "blob": "bd7cfed4ff94caa50cfa13be10e6574a69af2f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 176,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6d562beaefdf614747016260f64f35efb605287fc28369aa3f5886c908837ce",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a20d047f-d8c9-d44a-2fe2-10c5754b123e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntermediateField.isAlgebraic_X {E : IntermediateField K K⟮X⟯} (hE : E ≠ ⊥) :
    IsAlgebraic E (X : K⟮X⟯) := by
  rw [ne_eq, ← le_bot_iff, SetLike.not_le_iff_exists] at hE
  obtain ⟨f, hf₁, hf₂⟩ := hE
  exact IsAlgebraic.tower_top_of_subalgebra_le (adjoin_simple_le_iff.mpr hf₁) <|
    f.isAlgebraic_adjoin_simple_X (by rintro ⟨c, rfl⟩; exact hf₂ ⟨c, rfl⟩)

end

end RatFunc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd7cfed4ff94caa50cfa13be10e6574a69af2f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
