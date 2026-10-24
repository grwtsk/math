# Nodup.perm_iff_eq_of_sublist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb6ffb42-39d2-4eb2-9ae4-9acf2f74da67",
  "kind": "theorem",
  "lexical_name": "Nodup.perm_iff_eq_of_sublist",
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
  "slug": "nodup-perm-iff-eq-of-sublist--5a87845da25b37140e828c9b",
  "source": {
    "blob": "881e18989c325b57d44d3ebca85497117adc440a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a87845da25b37140e828c9b98b0e5cf7706259a24a0e71533ca3b6907dc662f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb6ffb42-39d2-4eb2-9ae4-9acf2f74da67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nodup.perm_iff_eq_of_sublist {l₁ l₂ l : List α} (d : Nodup l)
    (s₁ : l₁ <+ l) (s₂ : l₂ <+ l) : l₁ ~ l₂ ↔ l₁ = l₂ := by
  refine ⟨fun h => ?_, fun h => by rw [h]⟩
  induction s₂ generalizing l₁ with simp [Nodup, List.forall_mem_ne] at d
  | slnil => exact h.eq_nil
  | cons a s₂ IH =>
    match s₁ with
    | .cons _ s₁ => exact IH d.2 s₁ h
    | .cons_cons _ s₁ =>
      have := Subperm.subset ⟨_, h.symm, s₂⟩ (.head _)
      exact (d.1 this).elim
  | cons_cons a _ IH =>
    match s₁ with
    | .cons _ s₁ =>
      have := Subperm.subset ⟨_, h, s₁⟩ (.head _)
      exact (d.1 this).elim
    | .cons_cons _ s₁ => rw [IH d.2 s₁ h.cons_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant78192de4bd455ae99e2bbdcfe9cccbc9944b03fdee0f1a238ea0b69b19efadfe.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `881e18989c325b57d44d3ebca85497117adc440a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
