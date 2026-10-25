# eq_of_superset_of_not_ssuperset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a9b2353-528c-39f0-b95c-11a36ac4b49a",
  "kind": "lemma",
  "lexical_name": "eq_of_superset_of_not_ssuperset",
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
  "slug": "eq-of-superset-of-not-ssuperset--21e8911bcf5da8af0fcb83b4",
  "source": {
    "blob": "05b770cb1224edc254f495601790f1ad1cc299f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 625,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variant397bfda304de62cafee759cff5d23aaef439a73a785c85b1028fe33d0496ebc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21e8911bcf5da8af0fcb83b4f205975dc31abd02ac99deda2c6cd72625c2499f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variant397bfda304de62cafee759cff5d23aaef439a73a785c85b1028fe33d0496ebc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a9b2353-528c-39f0-b95c-11a36ac4b49a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 625–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_superset_of_not_ssuperset [IsAntisymm α (· ⊆ ·)] (hab : a ⊆ b) (hba : ¬ a ⊂ b) :
    b = a := ((eq_or_ssubset_of_subset hab).resolve_right hba).symm

alias HasSubset.Subset.trans_ssubset := ssubset_of_subset_of_ssubset

alias HasSSubset.SSubset.trans_subset := ssubset_of_ssubset_of_subset

alias HasSubset.Subset.ssubset_of_ne := ssubset_of_subset_of_ne

alias Ne.ssubset_of_subset := ssubset_of_ne_of_subset

alias HasSubset.Subset.eq_or_ssubset := eq_or_ssubset_of_subset

alias HasSubset.Subset.ssubset_or_eq := ssubset_or_eq_of_subset

alias HasSubset.Subset.eq_of_not_ssubset := eq_of_subset_of_not_ssubset
alias HasSubset.Subset.eq_of_not_ssuperset := eq_of_superset_of_not_ssuperset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variant397bfda304de62cafee759cff5d23aaef439a73a785c85b1028fe33d0496ebc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RelClasses/Variant397bfda304de62cafee759cff5d23aaef439a73a785c85b1028fe33d0496ebc7.lean#L625).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b770cb1224edc254f495601790f1ad1cc299f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
