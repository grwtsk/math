# polynomial_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7176d10e-f51f-4ba6-348c-4c1ad5ba79e6",
  "kind": "theorem",
  "lexical_name": "polynomial_continuous",
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
  "slug": "polynomial-continuous--ce1626e67d39a7a412574529",
  "source": {
    "blob": "766ce6ecd1b6a26dd15efc8688d25101c34a0c6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce1626e67d39a7a4125745299a4ab1fad206b75c499d456cc05e068cd4c3a7e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7176d10e-f51f-4ba6-348c-4c1ad5ba79e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem polynomial_continuous (A : ℝ) :
    Continuous (actualClosedPrimeDirichletPolynomial A) := by
  have ht (n : ℕ) (s : ℂ) :
      LSeries.term actualMangoldtCoefficients s n =
        (ArithmeticFunction.vonMangoldt n : ℂ) * Complex.exp (-s * (Real.log n : ℂ)) := by
    rcases eq_or_ne n 0 with rfl | hn
    · simp
    have hp : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
    rw [LSeries.term_of_ne_zero hn, actualMangoldtCoefficients,
      Complex.cpow_def_of_ne_zero (by exact_mod_cast hn)]
    have hlog : Complex.log (n : ℂ) = (Real.log (n : ℝ) : ℂ) :=
      (Complex.ofReal_log hp.le).symm
    rw [hlog]
    simp only [div_eq_mul_inv, ← Complex.exp_neg]
    ring
  unfold actualClosedPrimeDirichletPolynomial
  simp_rw [ht]
  fun_prop

/-- Complete actual complex bulk with only the actual constant potential centered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variante06f4f687e6c15bc8c82a3cc2a2c8d7843a07e5c537745c3faf889b64e25e35b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `766ce6ecd1b6a26dd15efc8688d25101c34a0c6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
