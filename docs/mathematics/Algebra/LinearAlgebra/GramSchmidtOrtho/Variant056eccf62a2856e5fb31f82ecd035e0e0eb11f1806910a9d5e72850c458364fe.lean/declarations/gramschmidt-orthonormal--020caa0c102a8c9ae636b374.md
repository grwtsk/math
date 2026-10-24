# gramSchmidt_orthonormal'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9603ad9dc618fe4cd27d85b4de57012c25186b11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e2d7ae2-b657-5cd3-48b7-9f418be82a7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a20c9c9-722b-f189-0715-8f0f4479e058",
  "kind": "theorem",
  "lexical_name": "gramSchmidt_orthonormal'",
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
  "slug": "gramschmidt-orthonormal--020caa0c102a8c9ae636b374",
  "source": {
    "blob": "9603ad9dc618fe4cd27d85b4de57012c25186b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 308,
    "path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:020caa0c102a8c9ae636b374fbc9cabbe741dfe0d7f51ba3060de541863dd272",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a20c9c9-722b-f189-0715-8f0f4479e058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gramSchmidt_orthonormal' (f : ι → E) :
    Orthonormal 𝕜 fun i : { i | gramSchmidtNormed 𝕜 f i ≠ 0 } => gramSchmidtNormed 𝕜 f i := by
  refine' ⟨fun i => gramSchmidtNormed_unit_length' i.prop, _⟩
  rintro i j (hij : ¬_)
  rw [Subtype.ext_iff] at hij
  simp [gramSchmidtNormed, inner_smul_left, inner_smul_right, gramSchmidt_orthogonal 𝕜 f hij]
#align gram_schmidt_orthonormal' gramSchmidt_orthonormal'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9603ad9dc618fe4cd27d85b4de57012c25186b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
