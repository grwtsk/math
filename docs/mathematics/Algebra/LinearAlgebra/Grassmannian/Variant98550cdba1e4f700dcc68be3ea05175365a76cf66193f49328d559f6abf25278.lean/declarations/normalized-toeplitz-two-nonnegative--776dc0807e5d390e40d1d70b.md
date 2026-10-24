# normalized_toeplitz_two_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e85d39b0f73a443ca3cd0465429847825193472b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0acbaf2b-d8ae-3d66-25a8-0927b81fc882",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3295baa-7a54-deb5-657a-89caaa704ccc",
  "kind": "theorem",
  "lexical_name": "normalized_toeplitz_two_nonnegative",
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
  "slug": "normalized-toeplitz-two-nonnegative--776dc0807e5d390e40d1d70b",
  "source": {
    "blob": "e85d39b0f73a443ca3cd0465429847825193472b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 122,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:776dc0807e5d390e40d1d70bc5477e3779cc2055d2ebd40813fdd60a22fad81e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3295baa-7a54-deb5-657a-89caaa704ccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_toeplitz_two_nonnegative (a : ℕ → ℝ) (h0 : a 0 = 1) (h1 : 0 ≤ a 1) :
    AllOrderedMinorsNonneg (SignedGraph.frame (Toeplitz.block a 2)) := by
  apply (signedGraph_minorCorrespondence_two _).mp
  apply (finiteNonnegative_two_iff _).mpr
  constructor
  · intro i j
    fin_cases i <;> fin_cases j <;> simp [Toeplitz.block, Toeplitz.entry, h0, h1]
  · simp [Matrix.det_fin_two, Toeplitz.block, Toeplitz.entry, h0]

/-- The structurally zero lower entry is a zero maximal minor in the Grassmannian chart. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant98550cdba1e4f700dcc68be3ea05175365a76cf66193f49328d559f6abf25278.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e85d39b0f73a443ca3cd0465429847825193472b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
