# fst_eq_zero_iff_eps_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3f0b999-4770-0470-d62a-59b8b29f8901",
  "kind": "lemma",
  "lexical_name": "fst_eq_zero_iff_eps_dvd",
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
  "slug": "fst-eq-zero-iff-eps-dvd--71095b6ba56c5e2602a35fcf",
  "source": {
    "blob": "9446422e43524c23f4c560bf17e6d407d3526c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71095b6ba56c5e2602a35fcf7d154fd637dbc3aebbc499056e76c886bc7eab6e",
  "verification": {
    "reference": "docs/verification/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3f0b999-4770-0470-d62a-59b8b29f8901`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fst_eq_zero_iff_eps_dvd [Semiring R] {x : R[ε]} :
    x.fst = 0 ↔ ε ∣ x := by
  simp_rw [dvd_def, TrivSqZeroExt.ext_iff, TrivSqZeroExt.fst_mul, TrivSqZeroExt.snd_mul,
    fst_eps, snd_eps, zero_mul, zero_smul, zero_add, MulOpposite.smul_eq_mul_unop,
    MulOpposite.unop_op, one_mul, exists_and_left, iff_self_and]
  intro
  exact ⟨.inl x.snd, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DualNumber/Variant9a94fd75ec28397ed09aade75d0d19024ed92fc59c5033d345c833142fa84a09.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9446422e43524c23f4c560bf17e6d407d3526c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
