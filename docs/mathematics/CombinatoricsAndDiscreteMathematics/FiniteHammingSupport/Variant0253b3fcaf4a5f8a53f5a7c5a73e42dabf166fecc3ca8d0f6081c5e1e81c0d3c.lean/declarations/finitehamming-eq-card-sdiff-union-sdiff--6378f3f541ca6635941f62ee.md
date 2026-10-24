# finiteHamming_eq_card_sdiff_union_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f19b586f5974b673a32672c14294fd6bac8ccc3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e561af2d-6a4a-0b1d-8337-2481afdff7f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41847873-bdfa-bdc9-016e-4697eb738a29",
  "kind": "theorem",
  "lexical_name": "finiteHamming_eq_card_sdiff_union_sdiff",
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
  "slug": "finitehamming-eq-card-sdiff-union-sdiff--6378f3f541ca6635941f62ee",
  "source": {
    "blob": "f19b586f5974b673a32672c14294fd6bac8ccc3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6378f3f541ca6635941f62eeacfabba45a87e2d5e87d63706c4b794e5fd4b4c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41847873-bdfa-bdc9-016e-4697eb738a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteHamming_eq_card_sdiff_union_sdiff
    {width : Nat}
    (left right : FiniteIncidenceCode width) :
    finiteHamming left right =
      ((finiteSupport left \ finiteSupport right) ∪
        (finiteSupport right \ finiteSupport left)).card := by
  rw [finiteHamming, cpop_eq_finiteSupport_card]
  congr 1
  ext index
  have bool_ne_iff
      (leftBit rightBit : Bool) :
      leftBit ≠ rightBit ↔
        (leftBit = true ∧ rightBit = false) ∨
          (rightBit = true ∧ leftBit = false) := by
    cases leftBit <;> cases rightBit <;> simp
  simpa [finiteSupport] using
    bool_ne_iff
      (left.bits.getLsb index)
      (right.bits.getLsb index)

/-- Exact finite Hamming distance is symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variant0253b3fcaf4a5f8a53f5a7c5a73e42dabf166fecc3ca8d0f6081c5e1e81c0d3c.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f19b586f5974b673a32672c14294fd6bac8ccc3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
