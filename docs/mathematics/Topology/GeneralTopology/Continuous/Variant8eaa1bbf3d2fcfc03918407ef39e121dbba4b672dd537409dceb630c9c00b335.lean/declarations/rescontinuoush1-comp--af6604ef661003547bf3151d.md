# resContinuousH1_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a6647d4cb9e7b881e5b5ca889e80ed46808e64d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a49815a5-b489-acd7-81e9-be947e244548",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:693e70bd-86b5-9392-65be-3fc1269698ae",
  "kind": "theorem",
  "lexical_name": "resContinuousH1_comp",
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
  "slug": "rescontinuoush1-comp--af6604ef661003547bf3151d",
  "source": {
    "blob": "9a6647d4cb9e7b881e5b5ca889e80ed46808e64d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af6604ef661003547bf3151d309cf6188d9d7f7412908582a9c6d684d569b983",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:693e70bd-86b5-9392-65be-3fc1269698ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resContinuousH1_comp
    {A : FiniteAddCommGroup.{u}}
    {K H G : ContinuousFiniteGaloisModule.{u} A}
    (R : ContinuousFiniteRestriction H G)
    (S : ContinuousFiniteRestriction K H)
    (c : ContinuousH1 G) :
    resContinuousH1 (ContinuousFiniteRestriction.comp R S) c =
      resContinuousH1 S (resContinuousH1 R c) := by
  exact resFiniteH1_comp R.finiteRestriction S.finiteRestriction c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant8eaa1bbf3d2fcfc03918407ef39e121dbba4b672dd537409dceb630c9c00b335.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a6647d4cb9e7b881e5b5ca889e80ed46808e64d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
