# Iic_sub_one_eq_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2be1d3a64807ecd94cbcf96ec2e73c9d2158e34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/713cd7b2d2a2b00c2ce2a8f87d01172cbab9a222dc30f31c385f1904d962732a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b755537-1aa2-f541-1f73-78230d3a47f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa18d178-0cb1-5816-29c4-52b306846f55",
  "kind": "lemma",
  "lexical_name": "Iic_sub_one_eq_Iio",
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
  "slug": "iic-sub-one-eq-iio--afa64735d4a2908dbd471bcd",
  "source": {
    "blob": "a2be1d3a64807ecd94cbcf96ec2e73c9d2158e34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 239,
    "path": "GRWTSK/Algebra/SuccPred/Variant713cd7b2d2a2b00c2ce2a8f87d01172cbab9a222dc30f31c385f1904d962732a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afa64735d4a2908dbd471bcd21ecaeec6a705ab61b99db497f6f39e4bcb3c5d5",
  "verification": {
    "reference": "docs/verification/Algebra/SuccPred/Variant713cd7b2d2a2b00c2ce2a8f87d01172cbab9a222dc30f31c385f1904d962732a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa18d178-0cb1-5816-29c4-52b306846f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Iic_sub_one_eq_Iio (b : α) : Iic (b - 1) = Iio b := by
  simpa [pred_eq_sub_one] using Iic_pred_eq_Iio b

end PredSubOrder
end LocallyFiniteOrderBot

/-! ### One-sided interval towards `⊤` -/

section LocallyFiniteOrderTop
variable [LocallyFiniteOrderTop α]

section SuccAddOrder
variable [Add α] [SuccAddOrder α] {a : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SuccPred/Variant713cd7b2d2a2b00c2ce2a8f87d01172cbab9a222dc30f31c385f1904d962732a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SuccPred/Variant713cd7b2d2a2b00c2ce2a8f87d01172cbab9a222dc30f31c385f1904d962732a.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2be1d3a64807ecd94cbcf96ec2e73c9d2158e34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
