# IsUnramified.stabilizer_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2687c78b-e09e-92be-e4a0-dd0035d6e475",
  "kind": "lemma",
  "lexical_name": "IsUnramified.stabilizer_eq_bot",
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
  "slug": "isunramified-stabilizer-eq-bot--6a4c9ce537b9a3a0dfc82353",
  "source": {
    "blob": "a03636bb9f3caa19679a53a2ec35c4a75b1d57a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 287,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a4c9ce537b9a3a0dfc82353c023d3b2ea12b1dd19b756af65673a69c23b9336",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2687c78b-e09e-92be-e4a0-dd0035d6e475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUnramified.stabilizer_eq_bot (h : IsUnramified k w) : Stab w = ⊥ := by
  rw [eq_bot_iff, ← mk_embedding w, SetLike.le_def]
  simp only [mem_stabilizer_mk_iff, Subgroup.mem_bot, forall_eq_or_imp, true_and]
  exact fun σ hσ ↦ hσ.isUnramified_mk_iff.mp ((mk_embedding w).symm ▸ h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant5dfb34b29f53d58d5f5b8aa58b9880dab02af7a144f24b48ffc23aca407f41c1.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a03636bb9f3caa19679a53a2ec35c4a75b1d57a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
