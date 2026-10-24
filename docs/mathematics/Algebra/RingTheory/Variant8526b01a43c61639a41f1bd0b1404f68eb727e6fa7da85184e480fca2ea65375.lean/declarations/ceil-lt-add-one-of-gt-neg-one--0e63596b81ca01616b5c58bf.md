# ceil_lt_add_one_of_gt_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36599246526eaa120c74e4e9f404ae18b2cffdfb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 892,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8da81519-1b3f-a7cb-2a0e-71379dbb60c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f62fa66-bb12-6b17-fedd-c73385a1e87a",
  "kind": "lemma",
  "lexical_name": "ceil_lt_add_one_of_gt_neg_one",
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
  "slug": "ceil-lt-add-one-of-gt-neg-one--0e63596b81ca01616b5c58bf",
  "source": {
    "blob": "36599246526eaa120c74e4e9f404ae18b2cffdfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 907,
    "line": 892,
    "path": "GRWTSK/Algebra/Ring/Variant8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e63596b81ca01616b5c58bfeb0c8842962898ec3e779e382b2e3b9f66dd89bd",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f62fa66-bb12-6b17-fedd-c73385a1e87a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–907.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ceil_lt_add_one_of_gt_neg_one (ha : -1 < a) : ⌈a⌉₊ < a + 1 := by
  by_cases! h : 0 ≤ a
  · exact ceil_lt_add_one h
  · rw [ceil_eq_zero.mpr h.le, cast_zero]
    exact neg_lt_iff_pos_add.mp ha

end Nat

section FloorRingToSemiring

variable [Ring R] [LinearOrder R] [FloorRing R]

/-! #### A floor ring as a floor semiring -/

variable {a : R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant8526b01a43c61639a41f1bd0b1404f68eb727e6fa7da85184e480fca2ea65375.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36599246526eaa120c74e4e9f404ae18b2cffdfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
