# preimage_inr_Icc_zero_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ea1553211913832c6702fc10a2eeaff0d9794270",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edb4cbda-cbcc-7559-c909-c5052207e43e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97ba81d1-241c-f6fa-24a2-9e381a08377f",
  "kind": "lemma",
  "lexical_name": "preimage_inr_Icc_zero_one",
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
  "slug": "preimage-inr-icc-zero-one--98e6345d6fbccc69f1068ef6",
  "source": {
    "blob": "ea1553211913832c6702fc10a2eeaff0d9794270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 469,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e6345d6fbccc69f1068ef6b68a6e1c7b1799bc0218dbdf9a4b62bee13885d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97ba81d1-241c-f6fa-24a2-9e381a08377f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preimage_inr_Icc_zero_one :
    ((↑) : A → A⁺¹) ⁻¹' Icc 0 1 = {x : A | 0 ≤ x} ∩ closedBall 0 1 := by
  ext
  simp [- mem_Icc, inr_mem_Icc_iff_norm_le]

end Icc

end CStarAlgebra

end CStar_nonunital

section Pow

namespace CStarAlgebra

variable {A : Type*} {B : Type*} [CStarAlgebra A] [PartialOrder A] [StarOrderedRing A]
  [NonUnitalCStarAlgebra B] [PartialOrder B] [StarOrderedRing B]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant4e2f4cec7ee37da411fcaa25d222010617310808406cb0ec83987ccd7e298d27.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea1553211913832c6702fc10a2eeaff0d9794270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
