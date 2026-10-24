# fixingSubgroup_fixedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5a3abbd8f68b79aec9433460e8bc5bb0f90f8fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57e4433b-e243-fbbc-be2b-15ee0c847b73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31001dc6-498a-0231-e593-829f93a28373",
  "kind": "theorem",
  "lexical_name": "fixingSubgroup_fixedField",
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
  "slug": "fixingsubgroup-fixedfield--09ad10b71b807f4bfcaccf49",
  "source": {
    "blob": "e5a3abbd8f68b79aec9433460e8bc5bb0f90f8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 251,
    "path": "GRWTSK/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09ad10b71b807f4bfcaccf498b78b99b5de27c6bcc619e4e759c9904dbf71fbb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31001dc6-498a-0231-e593-829f93a28373`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixingSubgroup_fixedField [FiniteDimensional F E] : fixingSubgroup (fixedField H) = H := by
  have H_le : H ≤ fixingSubgroup (fixedField H) := (le_iff_le _ _).mp le_rfl
  classical
  suffices Fintype.card H = Fintype.card (fixingSubgroup (fixedField H)) by
    exact SetLike.coe_injective (Set.eq_of_inclusion_surjective
      ((Fintype.bijective_iff_injective_and_card (Set.inclusion H_le)).mpr
        ⟨Set.inclusion_injective H_le, this⟩).2).symm
  apply Fintype.card_congr
  refine (FixedPoints.toAlgHomEquiv H E).trans ?_
  refine (algEquivEquivAlgHom (fixedField H) E).toEquiv.symm.trans ?_
  exact (fixingSubgroupEquiv (fixedField H)).toEquiv.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant01b22b35aca8b51c2fc57f47edcf05754ce6726a3342cc0dd9f45be1745731b1.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a3abbd8f68b79aec9433460e8bc5bb0f90f8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
