# canonicalEmbedding_eq_basisMatrix_mulVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3862754f4aec49061f287de11ecfdbbe68d4224",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7e6c94b-5905-223c-ffc7-fbacbe95d8ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad018896-b8e4-ccea-c8bf-85e99c32bfd5",
  "kind": "theorem",
  "lexical_name": "canonicalEmbedding_eq_basisMatrix_mulVec",
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
  "slug": "canonicalembedding-eq-basismatrix-mulvec--d7ab04d7fddedde636557c31",
  "source": {
    "blob": "d3862754f4aec49061f287de11ecfdbbe68d4224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 57,
    "path": "GRWTSK/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7ab04d7fddedde636557c31230a8cd79760fe6b7dfbe830e9ec2258c4b4a623",
  "verification": {
    "reference": "docs/verification/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad018896-b8e4-ccea-c8bf-85e99c32bfd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonicalEmbedding_eq_basisMatrix_mulVec (α : K) :
    canonicalEmbedding K α = (basisMatrix K).transpose.mulVec
      (fun i ↦ (((integralBasis K).reindex (equivReindex K).symm).repr α i : ℂ)) := by
  ext i
  rw [← (latticeBasis K).sum_repr (canonicalEmbedding K α), ← Equiv.sum_comp (equivReindex K)]
  simp only [canonicalEmbedding.integralBasis_repr_apply, mulVec, dotProduct,
    transpose_apply, of_apply, Fintype.sum_apply, mul_comm, Basis.repr_reindex,
    Finsupp.mapDomain_equiv_apply, Equiv.symm_symm, Pi.smul_apply, smul_eq_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/EquivReindex/Variantbfb95ed4dbe9c4c9b6112eb06da78ccb71bc02bd82ca7af7817a1093314ef91a.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3862754f4aec49061f287de11ecfdbbe68d4224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
