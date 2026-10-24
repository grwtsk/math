# linearIndependent_lapMatrix_ker_basis_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcd6bc91-e33f-5d25-0d45-8bc34294b3d8",
  "kind": "lemma",
  "lexical_name": "linearIndependent_lapMatrix_ker_basis_aux",
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
  "slug": "linearindependent-lapmatrix-ker-basis-aux--e0943aedc3a3a5e310b47002",
  "source": {
    "blob": "2f10d839092faf111a3b5f469ff69905ed56a66b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 173,
    "path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0943aedc3a3a5e310b47002656d44e8c6553432d5b13b2a78afa46f15debc75",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcd6bc91-e33f-5d25-0d45-8bc34294b3d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearIndependent_lapMatrix_ker_basis_aux :
    LinearIndependent ℝ (lapMatrix_ker_basis_aux G) := by
  rw [Fintype.linearIndependent_iff]
  intro g h0
  rw [Subtype.ext_iff] at h0
  have h : ∑ c, g c • lapMatrix_ker_basis_aux G c = fun i ↦ g (connectedComponentMk G i) := by
    simp only [lapMatrix_ker_basis_aux, SetLike.mk_smul_mk, AddSubmonoid.coe_finset_sum]
    repeat rw [AddSubmonoid.coe_finset_sum]
    ext i
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, mul_ite, mul_one, mul_zero, sum_ite_eq,
      mem_univ, ↓reduceIte]
  rw [h] at h0
  intro c
  obtain ⟨i, h'⟩ : ∃ i : V, G.connectedComponentMk i = c := Quot.exists_rep c
  exact h' ▸ congrFun h0 i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variant594e6d1c365cb912d9d60560d30e9c5d677551412996ed4f29632ad6c8edba8b.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f10d839092faf111a3b5f469ff69905ed56a66b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
