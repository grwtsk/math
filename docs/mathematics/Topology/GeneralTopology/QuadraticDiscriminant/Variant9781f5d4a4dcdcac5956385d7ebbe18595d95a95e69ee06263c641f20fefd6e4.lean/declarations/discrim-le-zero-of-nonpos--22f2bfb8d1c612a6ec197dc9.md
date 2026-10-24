# discrim_le_zero_of_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5288efc621f4c8ce643732c934d84357139f900",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd04e273-e15a-c6f5-d106-7b148d309523",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:713bdeb6-6ceb-e8e5-e8ec-9e9963fb63ab",
  "kind": "lemma",
  "lexical_name": "discrim_le_zero_of_nonpos",
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
  "slug": "discrim-le-zero-of-nonpos--22f2bfb8d1c612a6ec197dc9",
  "source": {
    "blob": "f5288efc621f4c8ce643732c934d84357139f900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 141,
    "path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22f2bfb8d1c612a6ec197dc92ede0bff3e4ef2d5052655f216d0ab9b8a068346",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:713bdeb6-6ceb-e8e5-e8ec-9e9963fb63ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma discrim_le_zero_of_nonpos (h : ∀ x : K, a * x * x + b * x + c ≤ 0) : discrim a b c ≤ 0 :=
  discrim_neg a b c ▸ discrim_le_zero <| by simpa only [neg_mul, ← neg_add, neg_nonneg]
#align discrim_le_zero_of_nonpos discrim_le_zero_of_nonpos

/-- If a polynomial of degree 2 is always positive, then its discriminant is negative,
at least when the coefficient of the quadratic term is nonzero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variant9781f5d4a4dcdcac5956385d7ebbe18595d95a95e69ee06263c641f20fefd6e4.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5288efc621f4c8ce643732c934d84357139f900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
