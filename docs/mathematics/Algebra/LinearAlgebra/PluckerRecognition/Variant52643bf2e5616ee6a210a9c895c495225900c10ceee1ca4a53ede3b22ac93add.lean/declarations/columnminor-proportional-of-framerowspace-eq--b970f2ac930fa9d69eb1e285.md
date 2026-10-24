# columnMinor_proportional_of_frameRowSpace_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38f0ebf21752508dff76dc25c11035565672a711",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:358584d2-5982-102a-f541-c1516c383f17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac727529-92ba-052d-5dc9-7ab4ab093412",
  "kind": "theorem",
  "lexical_name": "columnMinor_proportional_of_frameRowSpace_eq",
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
  "slug": "columnminor-proportional-of-framerowspace-eq--b970f2ac930fa9d69eb1e285",
  "source": {
    "blob": "38f0ebf21752508dff76dc25c11035565672a711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 126,
    "path": "GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b970f2ac930fa9d69eb1e28580cf8673ca424761148c8e142958e52fbfd7b521",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PluckerRecognition/Variant52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac727529-92ba-052d-5dc9-7ab4ab093412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem columnMinor_proportional_of_frameRowSpace_eq
    (A B : Matrix (Fin k) (Fin n) ℝ) (hB : B.rank = k)
    (h : frameRowSpace A = frameRowSpace B) :
    ∃ t : ℝ, t ≠ 0 ∧
      ∀ c : Fin k → Fin n, columnMinor B c = t * columnMinor A c := by
  obtain ⟨U, hU, hBA⟩ := exists_rowChange_of_frameRowSpace_eq A B hB h
  refine ⟨Matrix.det U, hU, ?_⟩
  intro c
  rw [hBA, columnMinor_mul_left]

/-- Proportional maximal minors recover the actual row space, not merely a coordinate record. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PluckerRecognition/Variant52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PluckerRecognition/Variant52643bf2e5616ee6a210a9c895c495225900c10ceee1ca4a53ede3b22ac93add.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38f0ebf21752508dff76dc25c11035565672a711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
