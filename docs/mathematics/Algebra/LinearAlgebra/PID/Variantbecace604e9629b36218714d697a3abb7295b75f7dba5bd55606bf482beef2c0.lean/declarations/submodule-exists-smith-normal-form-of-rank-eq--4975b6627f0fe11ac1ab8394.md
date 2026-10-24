# Submodule.exists_smith_normal_form_of_rank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46f968a1-1b69-8bf2-888d-2fc596e69f9b",
  "kind": "theorem",
  "lexical_name": "Submodule.exists_smith_normal_form_of_rank_eq",
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
  "slug": "submodule-exists-smith-normal-form-of-rank-eq--4975b6627f0fe11ac1ab8394",
  "source": {
    "blob": "8c284aafc68f2b9cece419f573a69894a4e43e67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 584,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4975b6627f0fe11ac1ab8394cdf9080c2bd93b98f437a3145eac575951e03294",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46f968a1-1b69-8bf2-888d-2fc596e69f9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.exists_smith_normal_form_of_rank_eq (b : Basis ι R M)
    (h : Module.finrank R N = Module.finrank R M) :
    ∃ (b' : Basis ι R M) (a : ι → R) (ab' : Basis ι R N), ∀ i, (ab' i : M) = a i • b' i := by
  cases nonempty_fintype ι
  let ⟨bM, bN, f, a, snf⟩ := N.smithNormalFormOfRankEq b h
  let e : Fin (Fintype.card ι) ≃ ι :=
    Equiv.ofBijective f
      ((Fintype.bijective_iff_injective_and_card f).mpr ⟨f.injective, Fintype.card_fin _⟩)
  have fe : ∀ i, f (e.symm i) = i := e.apply_symm_apply
  exact
    ⟨bM, a ∘ e.symm, bN.reindex e, fun i ↦ by
      simp only [snf, fe,
          Basis.coe_reindex, (· ∘ ·)]⟩

/--
If `M` is finite free over a PID `R`, then for any submodule `N` of the same rank,
we can find basis for `M` and `N` with the same indexing such that the inclusion map
is a square diagonal matrix; this is the basis for `M`. See:
* `Submodule.smithNormalFormBotBasis` for the basis on `N`,
* `Submodule.smithNormalFormCoeffs` for the entries of the diagonal matrix
* `Submodule.smithNormalFormBotBasis_def` for the proof that the inclusion map
  forms a square diagonal matrix.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variantbecace604e9629b36218714d697a3abb7295b75f7dba5bd55606bf482beef2c0.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c284aafc68f2b9cece419f573a69894a4e43e67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
