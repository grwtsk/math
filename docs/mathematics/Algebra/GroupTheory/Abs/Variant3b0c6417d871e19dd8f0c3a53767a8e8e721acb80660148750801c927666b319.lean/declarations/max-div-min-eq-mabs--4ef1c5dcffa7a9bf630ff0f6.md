# max_div_min_eq_mabs'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad5971a9-099d-c372-8ae1-5cbbcf812dbd",
  "kind": "lemma",
  "lexical_name": "max_div_min_eq_mabs'",
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
  "slug": "max-div-min-eq-mabs--4ef1c5dcffa7a9bf630ff0f6",
  "source": {
    "blob": "e35b123b5ea1589df2a4066e14b64b5a730fdff9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 258,
    "path": "GRWTSK/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ef1c5dcffa7a9bf630ff0f602cb631225aab32915231ce58d36f91d76517dba",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad5971a9-099d-c372-8ae1-5cbbcf812dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma max_div_min_eq_mabs' (a b : α) : max a b / min a b = |a / b|ₘ := by
  rcases le_total a b with ab | ba
  · rw [max_eq_right ab, min_eq_left ab, mabs_of_le_one, inv_div]
    rwa [div_le_one']
  · rw [max_eq_left ba, min_eq_right ba, mabs_of_one_le]
    rwa [one_le_div']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abs/Variant3b0c6417d871e19dd8f0c3a53767a8e8e721acb80660148750801c927666b319.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e35b123b5ea1589df2a4066e14b64b5a730fdff9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
