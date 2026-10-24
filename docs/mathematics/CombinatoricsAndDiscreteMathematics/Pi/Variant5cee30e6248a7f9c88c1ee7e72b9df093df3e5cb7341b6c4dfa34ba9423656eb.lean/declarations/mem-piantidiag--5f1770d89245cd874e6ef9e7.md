# mem_piAntidiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b773f796-9b7a-5578-eb59-df653571b3d0",
  "kind": "lemma",
  "lexical_name": "mem_piAntidiag",
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
  "slug": "mem-piantidiag--5f1770d89245cd874e6ef9e7",
  "source": {
    "blob": "cf38f637d7a7ee10b75c44668d33a57b9423f5fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f1770d89245cd874e6ef9e782057ddac26e7e8170b989e1840854b5ec092e05",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b773f796-9b7a-5578-eb59-df653571b3d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma mem_piAntidiag : f ∈ piAntidiag s n ↔ s.sum f = n ∧ ∀ i, f i ≠ 0 → i ∈ s := by
  rw [piAntidiag]
  induction' Fintype.truncEquivFinOfCardEq (Fintype.card_coe s) using Trunc.ind with e
  simp only [Trunc.lift_mk, mem_map, mem_finAntidiagonal, Embedding.coeFn_mk]
  constructor
  · rintro ⟨f, ⟨hf, rfl⟩, rfl⟩
    rw [sum_dite_of_true fun _ ↦ id]
    exact ⟨Fintype.sum_equiv e _ _ (by simp), by simp +contextual⟩
  · rintro ⟨rfl, hf⟩
    refine ⟨f ∘ (↑) ∘ e.symm, ?_, by ext i; have := not_imp_comm.1 (hf i); aesop⟩
    rw [← sum_attach s]
    exact Fintype.sum_equiv e.symm _ _ (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf38f637d7a7ee10b75c44668d33a57b9423f5fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
