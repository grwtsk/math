# _root_.alternatingGroup.closure_cycleType_eq_two_two_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b6fd44157ab58b460b68f932b360e762a10660d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e9e2918-ea29-1fd0-9f85-34626fd64d4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4aa774ed-4d2c-cb9c-fee0-cf45a8468970",
  "kind": "theorem",
  "lexical_name": "_root_.alternatingGroup.closure_cycleType_eq_two_two_eq_top",
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
  "slug": "root-alternatinggroup-closure-cycletype-eq-two-two-eq-top--6651ece9eb42efa8c183eed4",
  "source": {
    "blob": "8b6fd44157ab58b460b68f932b360e762a10660d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 268,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6651ece9eb42efa8c183eed4191176a84a935c94b7cc579156abde06347a4061",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aa774ed-4d2c-cb9c-fee0-cf45a8468970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.alternatingGroup.closure_cycleType_eq_two_two_eq_top (h5 : 5 ≤ Nat.card α) :
    Subgroup.closure {g : alternatingGroup α | (g : Perm α).cycleType = {2, 2}} = ⊤ := by
  rw [← map_subtype_inj, MonoidHom.map_closure]
  have : (alternatingGroup α).subtype '' _ = {g : Perm α | g.cycleType = {2, 2}} :=
    Subtype.coe_image_of_subset cycleType_eq_two_two_subset_alternatingGroup
  have := closure_cycleType_eq_two_two_eq_alternatingGroup h5
  aesop

/-- Part of proving $A_5$ is simple. Shows that the square of any element of $A_5$ with a 3-cycle in
  its cycle decomposition is a 3-cycle, so the normal closure of the original element must be
  $A_5$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6fd44157ab58b460b68f932b360e762a10660d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
