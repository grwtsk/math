# resultant_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 581,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d93a0cc0-fc39-4937-51b7-0667a3cd241e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02f6c07f-6617-1516-06c0-bcdf8c6b8fda",
  "kind": "lemma",
  "lexical_name": "resultant_mul_left",
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
  "slug": "resultant-mul-left--a5ad3957dc1099b1e0ceef77",
  "source": {
    "blob": "5af96ec828f2fbad992039b9ff6e5febc791c3d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 581,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5ad3957dc1099b1e0ceef77cc9f1766d2bf87267a2f5cbb40a61eb4b1e0fc70",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02f6c07f-6617-1516-06c0-bcdf8c6b8fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 581–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma resultant_mul_left (f₁ f₂ g : R[X]) (n : ℕ) (hn : g.natDegree ≤ n) :
    resultant (f₁ * f₂) g (f₁.natDegree + f₂.natDegree) n =
      resultant f₁ g f₁.natDegree n * resultant f₂ g f₂.natDegree n := by
  rw [resultant_comm, resultant_mul_right _ _ _ n hn, resultant_comm, resultant_comm f₂]
  ring_nf
  simp

/-- `Res(f, f) = 0` unless `deg f = 0`. Also see `resultant_self_eq_zero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant01932c13555664ece196527b1776fe30e4354721e509b8620d2723d0be373be5.lean#L581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5af96ec828f2fbad992039b9ff6e5febc791c3d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
