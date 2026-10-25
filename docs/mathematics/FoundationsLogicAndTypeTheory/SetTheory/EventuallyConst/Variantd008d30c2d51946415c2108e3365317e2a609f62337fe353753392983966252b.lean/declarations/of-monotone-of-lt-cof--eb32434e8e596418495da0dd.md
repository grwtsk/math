# of_monotone_of_lt_cof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "402831ca549b3c20b9537f1bbd7863af72ccbd41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22d3dfb9-44b0-5d26-77b8-9ed2c93954ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b76199a1-8f45-5b68-7b42-ec15cefdee48",
  "kind": "theorem",
  "lexical_name": "of_monotone_of_lt_cof",
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
  "slug": "of-monotone-of-lt-cof--eb32434e8e596418495da0dd",
  "source": {
    "blob": "402831ca549b3c20b9537f1bbd7863af72ccbd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EventuallyConst/Variantd008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb32434e8e596418495da0dd96bbfdd557262971db142dcdad51d46f6386a477",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/EventuallyConst/Variantd008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b76199a1-8f45-5b68-7b42-ec15cefdee48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_monotone_of_lt_cof (hf : Monotone f) (hα : lift.{u} #β < lift.{v} (cof α)) :
    atTop.EventuallyConst f := by
  have : Nonempty α := by by_contra!; simp at hα
  refine .of_not_isCofinal_rangeSplitting hf ?_
  contrapose! hα
  classical let := hf.isChain_range.lt_of_le.linearOrder
  rw [← lift_cof_congr_of_strictMono (rangeSplitting_strictMono hf) hα, lift_le]
  exact (cof_le_cardinalMk _).trans (mk_set_le _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/EventuallyConst/Variantd008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/EventuallyConst/Variantd008d30c2d51946415c2108e3365317e2a609f62337fe353753392983966252b.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402831ca549b3c20b9537f1bbd7863af72ccbd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
