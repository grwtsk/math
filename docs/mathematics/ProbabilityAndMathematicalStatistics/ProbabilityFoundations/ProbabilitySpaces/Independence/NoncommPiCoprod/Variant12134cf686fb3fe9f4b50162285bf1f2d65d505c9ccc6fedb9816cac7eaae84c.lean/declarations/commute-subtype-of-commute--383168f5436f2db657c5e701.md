# commute_subtype_of_commute

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bec1f196e3583436e814144165a09a420e500458",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b29e3ced-6871-7338-8e9a-56e18caca151",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cf47d45f-0f12-bced-f39d-bb061cd68c3a",
  "kind": "theorem",
  "lexical_name": "commute_subtype_of_commute",
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
  "slug": "commute-subtype-of-commute--383168f5436f2db657c5e701",
  "source": {
    "blob": "bec1f196e3583436e814144165a09a420e500458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 292,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:383168f5436f2db657c5e701ff2bd0b644da454108279997df14ea85480fe676",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf47d45f-0f12-bced-f39d-bb061cd68c3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commute_subtype_of_commute (i j : ι) (hne : i ≠ j) :
    ∀ (x : H i) (y : H j), Commute ((H i).subtype x) ((H j).subtype y) := by
  rintro ⟨x, hx⟩ ⟨y, hy⟩
  exact hcomm i j hne x y hx hy
#align subgroup.commute_subtype_of_commute Subgroup.commute_subtype_of_commute
#align add_subgroup.commute_subtype_of_commute AddSubgroup.commute_subtype_of_commute

/-- The canonical homomorphism from a family of subgroups where elements from different subgroups
commute -/
@[to_additive "The canonical homomorphism from a family of additive subgroups where elements from
different subgroups commute"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec1f196e3583436e814144165a09a420e500458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
