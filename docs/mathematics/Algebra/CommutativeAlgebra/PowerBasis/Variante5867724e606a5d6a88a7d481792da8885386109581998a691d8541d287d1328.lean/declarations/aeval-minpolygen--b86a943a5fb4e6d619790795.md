# aeval_minpolyGen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "792664d0f59d8544f1883d1f229731146b3af670",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf08f319-bdd0-7759-71d8-121c0963c1f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49aa6a7d-b526-7ae6-0a0d-19e258c8f920",
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
  "slug": "aeval-minpolygen--b86a943a5fb4e6d619790795",
  "source": {
    "blob": "792664d0f59d8544f1883d1f229731146b3af670",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 161,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b86a943a5fb4e6d61979079551e12ff8b5057397ecbd0c6196741d113acd3175",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49aa6a7d-b526-7ae6-0a0d-19e258c8f920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_minpolyGen (pb : PowerBasis A S) : aeval pb.gen (minpolyGen pb) = 0 := by
  simp_rw [minpolyGen, map_sub, map_sum, map_mul, map_pow, aeval_C, ← Algebra.smul_def, aeval_X]
  refine sub_eq_zero.mpr ((pb.basis.linearCombination_repr (pb.gen ^ pb.dim)).symm.trans ?_)
  rw [Finsupp.linearCombination_apply, Finsupp.sum_fintype] <;>
    simp only [pb.coe_basis, zero_smul, eq_self_iff_true, imp_true_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PowerBasis/Variante5867724e606a5d6a88a7d481792da8885386109581998a691d8541d287d1328.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `792664d0f59d8544f1883d1f229731146b3af670` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
