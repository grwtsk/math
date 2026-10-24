# Group.isCyclic_prod_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a44e189e-a302-2b5a-49f7-adae875a7f25",
  "kind": "theorem",
  "lexical_name": "Group.isCyclic_prod_iff",
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
  "slug": "group-iscyclic-prod-iff--06321e6c5e6d145cb59d9c67",
  "source": {
    "blob": "ecf625e54b46b367425daf33ac8da34d2308bc83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 954,
    "line": 931,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06321e6c5e6d145cb59d9c67d714a8945bc4a18009a2f52e630093dccd7c61fc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a44e189e-a302-2b5a-49f7-adae875a7f25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–954.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Group.isCyclic_prod_iff {M N : Type*} [Group M] [Group N] :
    IsCyclic (M × N) ↔ IsCyclic M ∧ IsCyclic N ∧ (Nat.card M).Coprime (Nat.card N) := by
  refine ⟨fun h ↦ ⟨isCyclic_left_of_prod M N, isCyclic_right_of_prod M N, ?_⟩, fun ⟨hM, hN, h⟩ ↦ ?_⟩
  · cases (finite_or_infinite M).symm
    · cases subsingleton_or_nontrivial N; · simp
      exact (not_isCyclic_prod_of_infinite_nontrivial M N h).elim
    cases (finite_or_infinite N).symm
    · cases subsingleton_or_nontrivial M; · simp
      rw [(MulEquiv.prodComm ..).isCyclic] at h
      exact (not_isCyclic_prod_of_infinite_nontrivial N M h).elim
    apply coprime_card_of_isCyclic_prod
  · let f := MonoidHom.snd M N
    let e : f.ker ≃* M := by
      rw [MonoidHom.ker_snd]
      exact ((Subgroup.prodEquiv ..).trans .prodUnique).trans Subgroup.topEquiv
    let _ := hM.commGroup; let _ := hN.commGroup
    rw [← e.isCyclic] at hM
    rw [← Nat.card_congr e.toEquiv] at h
    exact isCyclic_of_coprime_card_ker f h Prod.snd_surjective

end prod

section WithZero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant9cafb2941c1c48fec9b28e4fcec489be3cb504484129154d272a10770a4970ff.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecf625e54b46b367425daf33ac8da34d2308bc83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
