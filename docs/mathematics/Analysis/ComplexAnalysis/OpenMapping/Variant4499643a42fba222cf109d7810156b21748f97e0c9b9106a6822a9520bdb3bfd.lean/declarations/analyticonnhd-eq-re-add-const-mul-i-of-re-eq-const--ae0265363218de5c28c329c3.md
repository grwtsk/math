# AnalyticOnNhd.eq_re_add_const_mul_I_of_re_eq_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32098551-cb23-b67f-f493-be14c7d71c48",
  "kind": "theorem",
  "lexical_name": "AnalyticOnNhd.eq_re_add_const_mul_I_of_re_eq_const",
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
  "slug": "analyticonnhd-eq-re-add-const-mul-i-of-re-eq-const--ae0265363218de5c28c329c3",
  "source": {
    "blob": "9d27803ce84980490e39e516acee6b3070575a15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 210,
    "path": "GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant4499643a42fba222cf109d7810156b21748f97e0c9b9106a6822a9520bdb3bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae0265363218de5c28c329c30ba0448b3de37f26e1b4541f12ff7694882633c4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/OpenMapping/Variant4499643a42fba222cf109d7810156b21748f97e0c9b9106a6822a9520bdb3bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32098551-cb23-b67f-f493-be14c7d71c48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticOnNhd.eq_re_add_const_mul_I_of_re_eq_const {U : Set ℂ} {c₀ : ℝ}
    (h₁f : AnalyticOnNhd ℂ f U) (h₂f : ∀ x ∈ U, (f x).re = c₀) (h₁U : IsOpen U)
    (h₂U : IsConnected U) :
    ∃ (c : ℝ), ∀ x ∈ U, f x = c₀ + c * I := by
  obtain ⟨cc, hcc⟩ := eq_const_of_re_eq_const h₁f h₂f h₁U h₂U
  use cc.im
  simp_rw [Complex.ext_iff]
  aesop

/--
Corollary to the open mapping theorem: A holomorphic function whose imaginary part is constant is
itself constant.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/OpenMapping/Variant4499643a42fba222cf109d7810156b21748f97e0c9b9106a6822a9520bdb3bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/OpenMapping/Variant4499643a42fba222cf109d7810156b21748f97e0c9b9106a6822a9520bdb3bfd.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d27803ce84980490e39e516acee6b3070575a15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
