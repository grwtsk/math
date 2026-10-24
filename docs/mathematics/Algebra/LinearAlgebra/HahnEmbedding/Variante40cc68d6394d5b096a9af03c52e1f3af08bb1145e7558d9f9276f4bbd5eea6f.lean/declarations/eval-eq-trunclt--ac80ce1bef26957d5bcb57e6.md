# eval_eq_truncLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25bfb157-4450-30c6-648a-fab1c44ae557",
  "kind": "theorem",
  "lexical_name": "eval_eq_truncLT",
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
  "slug": "eval-eq-trunclt--ac80ce1bef26957d5bcb57e6",
  "source": {
    "blob": "0aa1f062fd3966dbb97233a890606a94ea604de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 682,
    "line": 664,
    "path": "GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac80ce1bef26957d5bcb57e645af6fa5cb74ae6e54f51186800b77228fd9be0e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25bfb157-4450-30c6-648a-fab1c44ae557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_eq_truncLT [IsOrderedAddMonoid R] [Archimedean R] {x : M}
    {c : FiniteArchimedeanClass M} {y : f.val.domain}
    (hy : ArchimedeanClass.mk (y.val - x) = c.val) (h : ∀ z : f.val.domain, z.val - x ∉ ball K c) :
    f.eval x = toLex (HahnSeries.truncLTLinearMap K c (ofLex (f.val y))) := by
  unfold eval
  rw [toLex.injective.eq_iff]
  ext d
  simp only
  obtain hd | hd := lt_or_ge d c
  · rw [HahnSeries.coe_truncLTLinearMap, HahnSeries.coeff_truncLT_of_lt hd]
    exact evalCoeff_eq _ fun _ ↦ by simpa [hy]
  · rw [HahnSeries.coe_truncLTLinearMap, HahnSeries.coeff_truncLT_of_le hd]
    apply evalCoeff_eq_zero
    contrapose! h
    obtain ⟨z, hz⟩ := h
    exact ⟨z, (ball_strictAnti K).antitone (by simpa using hd) hz⟩

/-- For `x` not in `f`'s domain, there is an infinite chain of `y` from `f`'s domain
that keeps getting closer to `x` in terms of Archimedean classes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa1f062fd3966dbb97233a890606a94ea604de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
