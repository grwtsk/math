# existsUnique_pivotNormalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8c770d299b6d25fb8322e08e67837bf67d9af8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0f7d651-85cc-b89c-586e-5139f24e411e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cd3a7c57-e08f-4365-a0a8-dcc4d1dbea8a",
  "kind": "theorem",
  "lexical_name": "existsUnique_pivotNormalized",
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
  "slug": "existsunique-pivotnormalized--181dfa93c2e29845a2b78e36",
  "source": {
    "blob": "d8c770d299b6d25fb8322e08e67837bf67d9af8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:181dfa93c2e29845a2b78e36ce46711f37997921eff0fa64173a010c9d4a3014",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd3a7c57-e08f-4365-a0a8-dcc4d1dbea8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_pivotNormalized (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnMinor A c ≠ 0) :
    ∃! B : Matrix (Fin k) (Fin n) ℝ,
      columnSubmatrix B c = 1 ∧ frameRowSpace B = frameRowSpace A := by
  refine ⟨pivotNormalize A c,
    ⟨pivotNormalize_pivot A c hc, frameRowSpace_pivotNormalize A c hc⟩, ?_⟩
  intro B hB
  apply normalized_eq_of_frameRowSpace_eq B (pivotNormalize A c) c
    hB.1 (pivotNormalize_pivot A c hc)
  rw [hB.2, frameRowSpace_pivotNormalize A c hc]

/-- An already normalized matrix is fixed without an additional choice operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotNormalization/Variantb03b6d14a36ec39bb935c2426f25d5ce7a2c8d0f537777c612b25b3bd5905760.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8c770d299b6d25fb8322e08e67837bf67d9af8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
