# abs_im_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e6df8b18c717b91e0a94b985925e838fdb5d8900",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8812c6c2-67c5-117e-a838-dc4b4c542b01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55f68299-5c73-e924-1025-865d2505c1ba",
  "kind": "lemma",
  "lexical_name": "abs_im_eq_norm",
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
  "slug": "abs-im-eq-norm--8724cf63df99e2f5ecd35963",
  "source": {
    "blob": "e6df8b18c717b91e0a94b985925e838fdb5d8900",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 232,
    "path": "GRWTSK/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8724cf63df99e2f5ecd3596370150b48b60828d4c2c94281238acfb6110faa80",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55f68299-5c73-e924-1025-865d2505c1ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma abs_im_eq_norm {z : ℂ} : |z.im| = ‖z‖ ↔ z.re = 0 :=
  not_iff_not.1 <| (abs_im_le_norm z).lt_iff_ne.symm.trans abs_im_lt_norm

@[deprecated (since := "2025-02-16")] alias abs_le_abs_re_add_abs_im := norm_le_abs_re_add_abs_im
@[deprecated (since := "2025-02-16")] alias abs_im_le_abs := abs_im_le_norm
@[deprecated (since := "2025-02-16")] alias im_le_abs := im_le_norm
@[deprecated (since := "2025-02-16")] alias abs_re_lt_abs := abs_re_lt_norm
@[deprecated (since := "2025-02-16")] alias abs_im_lt_abs := abs_im_lt_norm
@[deprecated (since := "2025-02-16")] alias abs_re_eq_abs := abs_re_eq_norm
@[deprecated (since := "2025-02-16")] alias abs_im_eq_abs := abs_im_eq_norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Norm/Variant454105c15633e9300c8e5ac2f198667cb8beb2a7e00958f178b8164dcf287042.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6df8b18c717b91e0a94b985925e838fdb5d8900` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
