# singularPhaseIIResidualQuotient_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e9cdda7a65069676d16fb773622b937a167d6dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c663e012-087a-1cdf-d1e5-6d2232bcf90d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50c584eb-abdf-cb19-5f62-a78817d3c509",
  "kind": "theorem",
  "lexical_name": "singularPhaseIIResidualQuotient_nonnegative",
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
  "slug": "singularphaseiiresidualquotient-nonnegative--6a63ad9c761c281a3eb51aa5",
  "source": {
    "blob": "6e9cdda7a65069676d16fb773622b937a167d6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a63ad9c761c281a3eb51aa55d5790b08858bfcd3e1e9b3822f5865a17a3f1b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50c584eb-abdf-cb19-5f62-a78817d3c509`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singularPhaseIIResidualQuotient_nonnegative
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (u : κ → ℝ) :
    0 ≤ (singularPhaseIIResidualQuotient G A B hA hB).geometry.form u u :=
  (singularPhaseIIResidualQuotient G A B hA hB).geometry.nonnegative u

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9cdda7a65069676d16fb773622b937a167d6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
