# MonoidHom.finsupp_prod_apply

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
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38effcfd-c3a7-b6d4-1d1d-a652c3a579f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dffbb7ae-a351-2f6d-ca63-3f61dbb8c8a1",
  "kind": "theorem",
  "lexical_name": "MonoidHom.finsupp_prod_apply",
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
  "slug": "monoidhom-finsupp-prod-apply--9428d9eface47f7f70d3463c",
  "source": {
    "blob": "c6610e0c18165f686412d7dd95a456bb38dae87a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 265,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9428d9eface47f7f70d3463c28e70adb726e505b608a4cc470aac280b64550b6",
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

Occurrence: `result:dffbb7ae-a351-2f6d-ca63-3f61dbb8c8a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidHom.finsupp_prod_apply [Zero β] [Monoid N] [CommMonoid P] (f : α →₀ β)
    (g : α → β → N →* P) (x : N) : f.prod g x = f.prod fun i fi => g i fi x :=
  MonoidHom.finset_prod_apply _ _ _
#align monoid_hom.finsupp_prod_apply MonoidHom.finsupp_prod_apply
#align add_monoid_hom.finsupp_sum_apply AddMonoidHom.finsupp_sum_apply

namespace Finsupp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6610e0c18165f686412d7dd95a456bb38dae87a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
