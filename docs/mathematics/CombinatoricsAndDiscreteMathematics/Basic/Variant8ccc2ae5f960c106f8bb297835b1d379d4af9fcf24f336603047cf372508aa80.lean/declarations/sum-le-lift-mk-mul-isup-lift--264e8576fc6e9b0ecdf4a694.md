# sum_le_lift_mk_mul_iSup_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6fa23e49439950c75f678ade0d18a4e2ade6e8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ae58230-d777-cbfc-55e0-994d36d65107",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df89701a-ca48-e413-5243-15688c34ce80",
  "kind": "theorem",
  "lexical_name": "sum_le_lift_mk_mul_iSup_lift",
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
  "slug": "sum-le-lift-mk-mul-isup-lift--264e8576fc6e9b0ecdf4a694",
  "source": {
    "blob": "a6fa23e49439950c75f678ade0d18a4e2ade6e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 196,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:264e8576fc6e9b0ecdf4a694c507a43fe00bc1b8a5b080bbc46f5a2339127646",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df89701a-ca48-e413-5243-15688c34ce80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_le_lift_mk_mul_iSup_lift {ι : Type u} (f : ι → Cardinal.{v}) :
    sum f ≤ lift #ι * ⨆ i, lift (f i) := by
  rw [← (sum f).lift_id, lift_sum, ← lift_umax.{u, v}, ← (⨆ i, lift (f i)).lift_id,
    lift_umax.{max v u, u}, ← sum_const]
  refine sum_le_sum _ _ fun i => ?_
  rw [lift_umax.{v, u}]
  exact le_ciSup bddAbove_of_small i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8ccc2ae5f960c106f8bb297835b1d379d4af9fcf24f336603047cf372508aa80.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6fa23e49439950c75f678ade0d18a4e2ade6e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
