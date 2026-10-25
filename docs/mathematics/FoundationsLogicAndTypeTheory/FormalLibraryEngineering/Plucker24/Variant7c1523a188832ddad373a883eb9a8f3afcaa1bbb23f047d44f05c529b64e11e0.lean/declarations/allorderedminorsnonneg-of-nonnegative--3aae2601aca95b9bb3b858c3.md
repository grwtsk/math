# allOrderedMinorsNonneg_of_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c2a927df4ba3b0d3121749026127598f87c459a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0609a896-11b9-bbbc-15c9-427f7dfaf463",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee183a74-9def-a1ce-6615-34246200e19e",
  "kind": "theorem",
  "lexical_name": "allOrderedMinorsNonneg_of_nonnegative",
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
  "slug": "allorderedminorsnonneg-of-nonnegative--3aae2601aca95b9bb3b858c3",
  "source": {
    "blob": "4c2a927df4ba3b0d3121749026127598f87c459a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aae2601aca95b9bb3b858c370c355a48d39e980696fe6a823a05d76b319573b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee183a74-9def-a1ce-6615-34246200e19e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem allOrderedMinorsNonneg_of_nonnegative
    (A : Matrix (Fin 2) (Fin 4) ℝ) (h : (ofMatrix A).Nonnegative) :
    AllOrderedMinorsNonneg A := by
  rcases h with ⟨h12, h13, h14, h23, h24, h34⟩
  have hp : ∀ i j : Fin 4, i < j → 0 ≤ minor₂ A i j := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> simp_all [ofMatrix]
  intro I
  rw [orderedMinor_two]
  exact hp (I 0) (I 1) (I.strictMono (by decide))

end PluckerCoordinates24

/-- Parameters for a chart matrix with its first two columns equal to the identity. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c2a927df4ba3b0d3121749026127598f87c459a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
