# incompatible_contributions_record_defect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df18e72dbdbd64822f90a7feebe982ced14e81fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 163,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7076a36-a66a-0c78-be96-6241b4137505",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74c9fa8f-b548-9e42-00f0-22a3506aafba",
  "kind": "theorem",
  "lexical_name": "incompatible_contributions_record_defect",
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
  "slug": "incompatible-contributions-record-defect--8f4c0271c02ba042c0f4f1fe",
  "source": {
    "blob": "df18e72dbdbd64822f90a7feebe982ced14e81fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 163,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f4c0271c02ba042c0f4f1fe367ac72a786995ec140fd569925810fb015d1f27",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74c9fa8f-b548-9e42-00f0-22a3506aafba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem incompatible_contributions_record_defect
    (C : FiniteModelConvolution Model Point State)
    (p : Point)
    {i j : Model}
    (hi : i ∈ C.neighborModels p)
    (hj : j ∈ C.neighborModels p)
    (hbad : ¬ C.compatible i j) :
    ∃ defect : ContributionDefect Model Point,
      defect.left = i ∧ defect.right = j ∧ defect.point = p := by
  let recorded := C.incompatibilityRecorded p i j hi hj hbad
  exact ⟨recorded.1, recorded.2.1, recorded.2.2.1, recorded.2.2.2.1⟩

/-- Averaging does not erase an unresolved incompatibility. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Convolution/Variant6c97703ad2791144207c69b200cd4e9be6e81f7681935d13341730616e657e31.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df18e72dbdbd64822f90a7feebe982ced14e81fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
