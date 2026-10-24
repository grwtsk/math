# isTranscendenceBasis_of_lift_le_trdeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "201b37f7304ceebf599c6bbd796bf3728fdfd9e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 494,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92e3fde5-70ba-5b3f-230f-7afa4b872cca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ded3790-5061-36ff-1b46-3a08ce6f45c5",
  "kind": "theorem",
  "lexical_name": "isTranscendenceBasis_of_lift_le_trdeg",
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
  "slug": "istranscendencebasis-of-lift-le-trdeg--2497fe6bb8d0f6d735a6b998",
  "source": {
    "blob": "201b37f7304ceebf599c6bbd796bf3728fdfd9e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 494,
    "path": "GRWTSK/Algebra/TranscendenceBasis/Variante55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2497fe6bb8d0f6d735a6b99816c371671051b49975ffc880f81a02e303305902",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendenceBasis/Variante55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ded3790-5061-36ff-1b46-3a08ce6f45c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTranscendenceBasis_of_lift_le_trdeg [Algebra.IsAlgebraic (adjoin R (range x)) A]
    (fin : trdeg R A < ℵ₀) (le : lift.{w} #ι ≤ lift.{u} (trdeg R A)) :
    IsTranscendenceBasis R x :=
  have := mk_lt_aleph0_iff.mp (lift_lt.mp <| le.trans_lt <| (lift_lt.mpr fin).trans_eq <| by simp)
  isTranscendenceBasis_of_lift_le_trdeg_of_finite R x le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendenceBasis/Variante55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendenceBasis/Variante55c683c5d63e14eb46e0fab7d53f8122ae1e7f24361561c112216317302ff4b.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `201b37f7304ceebf599c6bbd796bf3728fdfd9e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
