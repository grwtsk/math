# prime_subset_weight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b0f36c6-72f3-e031-8f4d-0baf5f6ee73a",
  "kind": "theorem",
  "lexical_name": "prime_subset_weight",
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
  "slug": "prime-subset-weight--9d02351498e209f1959c8ab5",
  "source": {
    "blob": "49a0c950106c27253ef900e21866b01cd4a25dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 26,
    "path": "GRWTSK/NumberTheory/Moebius/FiniteEulerProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d02351498e209f1959c8ab569adb5d6adf2f4232fa410a96dec54d4f246ca52",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FiniteEulerProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0f36c6-72f3-e031-8f4d-0baf5f6ee73a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_subset_weight (f : ArithmeticFunction R) (hf : f.IsMultiplicative)
    (S : Finset ℕ) (hS : ∀ p ∈ S, p.Prime) :
    (∏ p ∈ S, -f p) = (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p) := by
  calc
    (∏ p ∈ S, -f p) = ∏ p ∈ S, (μ p : R) * f p := by
      apply Finset.prod_congr rfl
      intro p hp
      simp [ArithmeticFunction.moebius_apply_prime (hS p hp)]
    _ = (∏ p ∈ S, (μ p : R)) * ∏ p ∈ S, f p :=
      Finset.prod_mul_distrib
    _ = (μ (∏ p ∈ S, p) : R) * f (∏ p ∈ S, p) := by
      have hμ := (ArithmeticFunction.isMultiplicative_moebius.intCast (R := R)).map_prod_of_prime S hS
      simpa only [ArithmeticFunction.intCoe_apply] using
        congrArg₂ (fun x y : R => x * y) hμ.symm (hf.map_prod_of_prime S hS).symm

/-- Reindex precisely the born prime subsets. Nonsquarefree natural-number
summands vanish, so no nonzero coefficient is lost. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FiniteEulerProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FiniteEulerProduct.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a0c950106c27253ef900e21866b01cd4a25dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
