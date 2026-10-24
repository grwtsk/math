# Submodule.nonempty_basis_of_pid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5afef672f3b4238f35d3d69c040cb35f1afe227",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/caa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:586179bb-2f0f-dd81-5884-61c85db927e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfce2861-70e0-b7b7-43f9-96fbaa769e13",
  "kind": "theorem",
  "lexical_name": "Submodule.nonempty_basis_of_pid",
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
  "slug": "submodule-nonempty-basis-of-pid--8448a053dfc4b9446a2b2670",
  "source": {
    "blob": "b5afef672f3b4238f35d3d69c040cb35f1afe227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 298,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8448a053dfc4b9446a2b267056e8a75ae6858a4c70eb78c1ffb050e0f308e166",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfce2861-70e0-b7b7-43f9-96fbaa769e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.nonempty_basis_of_pid {ι : Type*} [Finite ι] (b : Basis ι R M)
    (N : Submodule R M) : ∃ n : ℕ, Nonempty (Basis (Fin n) R N) := by
  haveI := Classical.decEq M
  cases nonempty_fintype ι
  induction' N using inductionOnRank with N ih
  · exact b
  let b' := (b.reindex (Fintype.equivFin ι)).map (LinearEquiv.ofTop _ rfl).symm
  by_cases N_bot : N = ⊥
  · subst N_bot
    exact ⟨0, ⟨Basis.empty _⟩⟩
  obtain ⟨y, -, a, hay, M', -, N', N'_le_N, -, -, ay_ortho, h'⟩ :=
    Submodule.basis_of_pid_aux ⊤ N b' N_bot le_top
  obtain ⟨n', ⟨bN'⟩⟩ := ih N' N'_le_N _ hay ay_ortho
  obtain ⟨bN, _hbN⟩ := h' n' bN'
  exact ⟨n' + 1, ⟨bN⟩⟩
  infer_instance
#align submodule.nonempty_basis_of_pid Submodule.nonempty_basis_of_pid

/-- A submodule of a free `R`-module of finite rank is also a free `R`-module of finite rank,
if `R` is a principal ideal domain.

See also the stronger version `Submodule.smithNormalForm`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantcaa83aa08262de85e7ec613577b2deb6ddbd715c6b32dd89879a5c11e841c3c8.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5afef672f3b4238f35d3d69c040cb35f1afe227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
