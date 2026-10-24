# iIndepSet.condExp_indicator_filtrationOfSet_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a28b0a7f-0589-29fb-d5b9-c7bfc7a805e0",
  "kind": "theorem",
  "lexical_name": "iIndepSet.condExp_indicator_filtrationOfSet_ae_eq",
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
  "slug": "iindepset-condexp-indicator-filtrationofset-ae-eq--7536b725f15e0cec508af557",
  "source": {
    "blob": "313798905bd766beb2c433e74cd0cd96b63048c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7536b725f15e0cec508af55714118c4dbf607dcb4b3ecba3ce619fe0c85b6515",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a28b0a7f-0589-29fb-d5b9-c7bfc7a805e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepSet.condExp_indicator_filtrationOfSet_ae_eq (hsm : ∀ n, MeasurableSet (s n))
    (hs : iIndepSet s μ) (hij : i < j) :
    μ[(s j).indicator (fun _ => 1 : Ω → ℝ)|filtrationOfSet hsm i] =ᵐ[μ]
    fun _ => μ.real (s j) := by
  rw [Filtration.filtrationOfSet_eq_natural (β := ℝ) hsm]
  refine (iIndepFun.condExp_natural_ae_eq_of_lt _ hs.iIndepFun_indicator hij).trans ?_
  simp only [integral_indicator_const _ (hsm _), Algebra.id.smul_eq_mul, mul_one]; rfl

@[deprecated (since := "2025-01-21")]
alias iIndepSet.condexp_indicator_filtrationOfSet_ae_eq :=
  iIndepSet.condExp_indicator_filtrationOfSet_ae_eq

open Filter

/-- **The second Borel-Cantelli lemma**: Given a sequence of independent sets `(sₙ)` such that
`∑ n, μ sₙ = ∞`, `limsup sₙ` has measure 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant22a3781febaae9f2fec7fdbd33d389dcd8875103e57f868ad70e0ea79b98b8d9.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313798905bd766beb2c433e74cd0cd96b63048c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
