# sub_one_left_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:934505fd-0dd6-56c6-57bc-36a106a78051",
  "kind": "lemma",
  "lexical_name": "sub_one_left_of_dvd",
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
  "slug": "sub-one-left-of-dvd--f48902b9417b8e01fcb07a3a",
  "source": {
    "blob": "f8bfe4f4609ce7e6d2e2ff7ea9252794649b3508",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 434,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Varianta9c1f0bc7b4f5351204fc201e8441d7ce889f830c6ec427bfe29208062f8fa55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f48902b9417b8e01fcb07a3a46f8baf900a9a6bd6b5ea5ad4d153d9bb5c476b5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Varianta9c1f0bc7b4f5351204fc201e8441d7ce889f830c6ec427bfe29208062f8fa55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:934505fd-0dd6-56c6-57bc-36a106a78051`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sub_one_left_of_dvd {x y : R} (h : y ∣ x) : IsCoprime (x - 1) y := by
  rw [← neg_sub, neg_left_iff, sub_eq_neg_add]
  exact add_one_left_of_dvd h.neg_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Varianta9c1f0bc7b4f5351204fc201e8441d7ce889f830c6ec427bfe29208062f8fa55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Varianta9c1f0bc7b4f5351204fc201e8441d7ce889f830c6ec427bfe29208062f8fa55.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8bfe4f4609ce7e6d2e2ff7ea9252794649b3508` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
