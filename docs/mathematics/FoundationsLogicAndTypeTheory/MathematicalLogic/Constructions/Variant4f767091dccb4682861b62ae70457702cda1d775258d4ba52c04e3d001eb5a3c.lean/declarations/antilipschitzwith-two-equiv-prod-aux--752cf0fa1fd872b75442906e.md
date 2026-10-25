# antilipschitzWith_two_equiv_prod_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82d4fd67-2e16-5569-30f7-e0a4b26e00c5",
  "kind": "lemma",
  "lexical_name": "antilipschitzWith_two_equiv_prod_aux",
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
  "slug": "antilipschitzwith-two-equiv-prod-aux--752cf0fa1fd872b75442906e",
  "source": {
    "blob": "c25ac4ede22ac5dd022433ba1439b46afac2df0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:752cf0fa1fd872b75442906e9b443c0e87803dae470e12f93eae29d34338cfb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82d4fd67-2e16-5569-30f7-e0a4b26e00c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma antilipschitzWith_two_equiv_prod_aux : AntilipschitzWith 2 (equiv A (E × F)) :=
  AddMonoidHomClass.antilipschitz_of_bound (linearEquiv ℂ A (E × F)) fun x ↦ by
    apply prod_norm_le_norm_add x |>.trans
    simp only [NNReal.coe_ofNat, linearEquiv_apply, two_mul]
    gcongr
    · exact norm_fst_le x
    · exact norm_snd_le x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25ac4ede22ac5dd022433ba1439b46afac2df0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
