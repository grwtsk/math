# disjoint_map_of_ker_le_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03e4f85c41d42148ebf34bc68da14a0414b5ee92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 578,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e1599740a49823e80001aa70e662d1fa4542db127d2bca286bacc43a58a8e49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:400f6967-ad8f-207c-4065-b4b5f2904a70",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fe682c7-25f9-d297-8d1a-ad33ce485726",
  "kind": "lemma",
  "lexical_name": "disjoint_map_of_ker_le_left",
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
  "slug": "disjoint-map-of-ker-le-left--ae92b3fefd59eb404cc7f673",
  "source": {
    "blob": "03e4f85c41d42148ebf34bc68da14a0414b5ee92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 581,
    "line": 578,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6e1599740a49823e80001aa70e662d1fa4542db127d2bca286bacc43a58a8e49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae92b3fefd59eb404cc7f67337ac9aa883add3e1d9dbddfaae1e18183eec909c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6e1599740a49823e80001aa70e662d1fa4542db127d2bca286bacc43a58a8e49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fe682c7-25f9-d297-8d1a-ad33ce485726`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–581.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma disjoint_map_of_ker_le_left {f : M →ₛₗ[τ₁₂] M₂} {p q : Submodule R M}
    (hpq : Disjoint p q) (hker : f.ker ≤ p) : Disjoint (p.map f) (q.map f) :=
  disjoint_map_of_ker_le_right hpq.symm hker |>.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6e1599740a49823e80001aa70e662d1fa4542db127d2bca286bacc43a58a8e49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6e1599740a49823e80001aa70e662d1fa4542db127d2bca286bacc43a58a8e49.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03e4f85c41d42148ebf34bc68da14a0414b5ee92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
