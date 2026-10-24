# maximalIdeal_eq_map_of_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96f69a6f421625af228e65a8e884988d552b8655",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1147a6a8-8b91-af7d-8b09-93870ca34b14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7a7da02-e41b-f09b-fcbd-602ed89d1a30",
  "kind": "lemma",
  "lexical_name": "maximalIdeal_eq_map_of_fg",
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
  "slug": "maximalideal-eq-map-of-fg--5e1b148dec327e702504fa0c",
  "source": {
    "blob": "96f69a6f421625af228e65a8e884988d552b8655",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e1b148dec327e702504fa0c22f7049d2d77ba5d866e9166cc03f87a31dca735",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7a7da02-e41b-f09b-fcbd-602ed89d1a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma maximalIdeal_eq_map_of_fg [IsLocalRing R] (fg : (maximalIdeal R).FG) :
    haveI := AdicCompletion.isLocalRing_of_fg fg
    maximalIdeal (AdicCompletion (maximalIdeal R) R) =
    (maximalIdeal R).map (algebraMap R (AdicCompletion (maximalIdeal R) R)) :=
  haveI := AdicCompletion.isLocalRing_of_fg fg
  (IsLocalRing.eq_maximalIdeal (AdicCompletion.isMaximal_map_of_le _ _ (le_refl _) fg)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LocalRing/Variantf3719324a0fb37466ef0a5785743c6917c48732e7a9de7b3b5385a747c6496ba.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f69a6f421625af228e65a8e884988d552b8655` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
