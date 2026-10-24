# span_relation_le_ker_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46647eafc3aa1008582e0d03a321d798d7816364",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:310fb3d2-90e0-a575-8c22-aaea9f27512d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6383b001-afcc-bdb3-f525-9622ea8483fd",
  "kind": "lemma",
  "lexical_name": "span_relation_le_ker_π",
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
  "slug": "span-relation-le-ker--d8db1895dfe6755158de6f67",
  "source": {
    "blob": "46647eafc3aa1008582e0d03a321d798d7816364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 162,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8db1895dfe6755158de6f677e23484333e168c8175e528724d154163b2766d6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6383b001-afcc-bdb3-f525-9622ea8483fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_relation_le_ker_π :
    Submodule.span A (Set.range relations.relation) ≤ LinearMap.ker solution.π := by
  rw [Submodule.span_le]
  rintro _ ⟨r, rfl⟩
  simp only [SetLike.mem_coe, LinearMap.mem_ker, π_relation]

/-- Given `relations : Relations A` and `solution : relations.Solution M`, this is
the canonical linear map `relations.Quotient →ₗ[A] M` from the module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46647eafc3aa1008582e0d03a321d798d7816364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
