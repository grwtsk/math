# aeval_minpolyGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89732944-d430-3a9a-0ad8-21be7f1d126d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26a0f001-d339-02ff-4633-64e480654795",
  "kind": "theorem",
  "lexical_name": "aeval_minpolyGen",
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
  "slug": "aeval-minpolygen--2599f8f74d57aade3ebc42dd",
  "source": {
    "blob": "3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 156,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2599f8f74d57aade3ebc42dd3868a59df073c88afa8ff371c9fa4ae3c08fb3a2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a0f001-d339-02ff-4633-64e480654795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_minpolyGen (pb : PowerBasis A S) : aeval pb.gen (minpolyGen pb) = 0 := by
  simp_rw [minpolyGen, AlgHom.map_sub, AlgHom.map_sum, AlgHom.map_mul, AlgHom.map_pow, aeval_C, ←
    Algebra.smul_def, aeval_X]
  refine' sub_eq_zero.mpr ((pb.basis.total_repr (pb.gen ^ pb.dim)).symm.trans _)
  rw [Finsupp.total_apply, Finsupp.sum_fintype] <;>
    simp only [pb.coe_basis, zero_smul, eq_self_iff_true, imp_true_iff]
#align power_basis.aeval_minpoly_gen PowerBasis.aeval_minpolyGen

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Varianta210e85e754d63bd44ccc6531ebe1eb2d9edf3d63e2ba7d9bf9000acccd76fd3.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ce20ada3f3ed6c5d5b05e9dd080b01208d8a2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
