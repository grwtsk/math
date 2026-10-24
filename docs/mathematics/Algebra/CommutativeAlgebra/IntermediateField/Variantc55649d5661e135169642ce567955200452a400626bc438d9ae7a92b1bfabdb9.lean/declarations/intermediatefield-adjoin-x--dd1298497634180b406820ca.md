# IntermediateField.adjoin_X

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
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48df0d84-f299-89ec-57be-fc350f24daa7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b082d6dc-0df7-b0b7-e714-3b6974d91b83",
  "kind": "theorem",
  "lexical_name": "IntermediateField.adjoin_X",
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
  "slug": "intermediatefield-adjoin-x--dd1298497634180b406820ca",
  "source": {
    "blob": "bd7cfed4ff94caa50cfa13be10e6574a69af2f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 30,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd1298497634180b406820cada6ab2ffd46295ff3c1a679864245a08b3266764",
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

Occurrence: `result:b082d6dc-0df7-b0b7-e714-3b6974d91b83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IntermediateField.adjoin_X (E : IntermediateField K K⟮X⟯) :
    E⟮(X : K⟮X⟯)⟯ = ⊤ := by
  rw [← restrictScalars_eq_top_iff (K := K), IntermediateField.restrictScalars_adjoin,
    _root_.eq_top_iff]
  exact le_trans (le_of_eq RatFunc.adjoin_X.symm) (adjoin.mono _ _ _ (by simp))

/-- The equivalence between `E⟮X⟯` and `K⟮X⟯` as `E`-algebras. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntermediateField/Variantc55649d5661e135169642ce567955200452a400626bc438d9ae7a92b1bfabdb9.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd7cfed4ff94caa50cfa13be10e6574a69af2f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
