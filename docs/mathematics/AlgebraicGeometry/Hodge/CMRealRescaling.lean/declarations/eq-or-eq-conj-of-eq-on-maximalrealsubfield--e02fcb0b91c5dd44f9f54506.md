# eq_or_eq_conj_of_eq_on_maximalRealSubfield

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e388fcf9-733d-4912-760e-502e386aa7f3",
  "kind": "theorem",
  "lexical_name": "eq_or_eq_conj_of_eq_on_maximalRealSubfield",
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
  "slug": "eq-or-eq-conj-of-eq-on-maximalrealsubfield--e02fcb0b91c5dd44f9f54506",
  "source": {
    "blob": "1b133e9d19caf02a52f34f18607ebfe291eaf3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 252,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e02fcb0b91c5dd44f9f545065c43e3d59e946d1e36140a17124851df50c7c02d",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e388fcf9-733d-4912-760e-502e386aa7f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_or_eq_conj_of_eq_on_maximalRealSubfield
    (σ ρ : E ≃ₐ[ℚ] E)
    (h :
      ∀ x : E⁺,
        σ (algebraMap E⁺ E x) = ρ (algebraMap E⁺ E x)) :
    σ = ρ ∨ σ = (centralInvolution E).conj ρ := by
  let δQ : E ≃ₐ[ℚ] E := ρ.symm * σ
  let δR : E ≃ₐ[E⁺] E :=
    { δQ.toRingEquiv with
      commutes' := by
        intro x
        change ρ.symm (σ (algebraMap E⁺ E x)) = algebraMap E⁺ E x
        rw [h x]
        simp }
  rcases maximalRealSubfieldAlgEquiv_eq_one_or_complexConj E δR with hδ | hδ
  · left
    ext x
    have hx := DFunLike.congr_fun hδ x
    have hx' : ρ.symm (σ x) = x := by
      simpa [δR, δQ] using hx
    calc
      σ x = ρ (ρ.symm (σ x)) := by simp
      _ = ρ x := by rw [hx']
  · right
    ext x
    have hx := DFunLike.congr_fun hδ x
    have hx' :
        ρ.symm (σ x) = galoisComplexConj E x := by
      simpa [δR, δQ, galoisComplexConj] using hx
    calc
      σ x = ρ (ρ.symm (σ x)) := by simp
      _ = ρ (galoisComplexConj E x) := by rw [hx']
      _ = galoisComplexConj E (ρ x) :=
        (galoisComplexConj_commute_apply E ρ x).symm
      _ = ((centralInvolution E).conj ρ) x := rfl

/-- Restrict one Galois-labelled complex embedding to the maximal real
subfield, retaining its rational-algebra structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b133e9d19caf02a52f34f18607ebfe291eaf3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
