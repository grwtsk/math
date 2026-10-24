# graph_eq_range_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37c546cad03aa0817dfb070a26275a4bd658c2bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e164aee3-2119-98a2-0023-4c57ffd3cd6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab8415e3-12f0-4956-9a76-40cfd3b166d3",
  "kind": "lemma",
  "lexical_name": "graph_eq_range_prod",
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
  "slug": "graph-eq-range-prod--f7c3194bbfb33c5018a91567",
  "source": {
    "blob": "37c546cad03aa0817dfb070a26275a4bd658c2bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 172,
    "path": "GRWTSK/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7c3194bbfb33c5018a9156785590f33f66b22505eb37bca27079513c2162f9d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab8415e3-12f0-4956-9a76-40cfd3b166d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma graph_eq_range_prod (f : G →* H) : f.graph = range ((id _).prod f) := by aesop

@[deprecated (since := "2025-03-11")]
alias AddMonoidHom.graph_eq_range_sum := graph_eq_range_prod

/-- **Vertical line test** for group homomorphisms.

Let `f : G → H × I` be a homomorphism to a product of groups. Assume that `f` is surjective on the
first factor and that the image of `f` intersects every "vertical line" `{(h, i) | i : I}` at most
once. Then the image of `f` is the graph of some group homomorphism `f' : H → I`. -/
@[to_additive "**Vertical line test** for group homomorphisms.

Let `f : G → H × I` be a homomorphism to a product of groups. Assume that `f` is surjective on the
first factor and that the image of `f` intersects every \"vertical line\" `{(h, i) | i : I}` at most
once. Then the image of `f` is the graph of some group homomorphism `f' : H → I`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Graph/Variantd914192d7a276b35efb80b23bcdd82459d469e7a1f37a1d63f9002f0efbf22dd.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37c546cad03aa0817dfb070a26275a4bd658c2bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
