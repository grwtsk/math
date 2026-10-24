# finset_sum_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c6610e0c18165f686412d7dd95a456bb38dae87a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7689cee5-ce74-a55e-e8ed-ab6d3664b0d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7272299-5be5-3955-7905-1d1693f26542",
  "kind": "theorem",
  "lexical_name": "finset_sum_apply",
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
  "slug": "finset-sum-apply--e66a9817fca9a8a31ff4b8b9",
  "source": {
    "blob": "c6610e0c18165f686412d7dd95a456bb38dae87a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 303,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e66a9817fca9a8a31ff4b8b9b4821305267943f97ca18bc9ecd7df5dcf888986",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7272299-5be5-3955-7905-1d1693f26542`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finset_sum_apply [AddCommMonoid N] (S : Finset ι) (f : ι → α →₀ N) (a : α) :
    (∑ i in S, f i) a = ∑ i in S, f i a :=
  (applyAddHom a : (α →₀ N) →+ _).map_sum _ _
#align finsupp.finset_sum_apply Finsupp.finset_sum_apply

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6610e0c18165f686412d7dd95a456bb38dae87a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
