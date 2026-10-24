# dim_le_natDegree_of_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e1d8fe1ee88000145e685c8910639e0b89511368",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:029be70a-a271-e818-0bed-f4e692b3d227",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:888f299d-5df3-d102-7899-79046a57a867",
  "kind": "theorem",
  "lexical_name": "dim_le_natDegree_of_root",
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
  "slug": "dim-le-natdegree-of-root--2df92d568295909923f37e07",
  "source": {
    "blob": "e1d8fe1ee88000145e685c8910639e0b89511368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 182,
    "path": "GRWTSK/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df92d568295909923f37e07c4081da23e1926c303eb4d8f5230e796953e9e5d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:888f299d-5df3-d102-7899-79046a57a867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dim_le_natDegree_of_root (pb : PowerBasis A S) {p : A[X]} (ne_zero : p ≠ 0)
    (root : aeval pb.gen p = 0) : pb.dim ≤ p.natDegree := by
  refine le_of_not_gt fun hlt => ne_zero ?_
  rw [p.as_sum_range' _ hlt, Finset.sum_range]
  refine Fintype.sum_eq_zero _ fun i => ?_
  simp_rw [aeval_eq_sum_range' hlt, Finset.sum_range, ← pb.basis_eq_pow] at root
  have := Fintype.linearIndependent_iff.1 pb.basis.linearIndependent _ root
  rw [this, monomial_zero_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PowerBasis/Variantb45caed598454c564bf9c5f6c9a3a1ca7e5ed97e2985aee5880b08342a272e02.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1d8fe1ee88000145e685c8910639e0b89511368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
