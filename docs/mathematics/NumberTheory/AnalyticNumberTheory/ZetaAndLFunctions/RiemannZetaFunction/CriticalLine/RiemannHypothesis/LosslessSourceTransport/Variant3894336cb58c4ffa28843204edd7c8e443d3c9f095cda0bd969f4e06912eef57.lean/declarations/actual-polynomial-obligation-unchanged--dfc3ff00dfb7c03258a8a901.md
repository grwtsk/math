# actual_polynomial_obligation_unchanged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af09caca-10b5-1aa8-6182-3fb5c06bd60b",
  "kind": "theorem",
  "lexical_name": "actual_polynomial_obligation_unchanged",
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
  "slug": "actual-polynomial-obligation-unchanged--dfc3ff00dfb7c03258a8a901",
  "source": {
    "blob": "1a685934070053f49c90fc487058e3c0826f0f35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LosslessSourceTransport/Variant3894336cb58c4ffa28843204edd7c8e443d3c9f095cda0bd969f4e06912eef57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfc3ff00dfb7c03258a8a901e609ef6d6b93f31da2f443a231dcddd322d1775b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LosslessSourceTransport/Variant3894336cb58c4ffa28843204edd7c8e443d3c9f095cda0bd969f4e06912eef57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af09caca-10b5-1aa8-6182-3fb5c06bd60b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_polynomial_obligation_unchanged {V : Type*}
    (encode : ℝ → V) (decode : ℝ → V → ℝ)
    (hdecode : ∀ A : ℝ, decode A (encode A) =
      EstimatePrimeSmoothDefect.closedPrimeMoment A) :
    PolynomialMertensReduction.EventuallyPolynomialUpper (fun A ↦ decode A (encode A)) ↔
      OpenArithmeticSuppliers.ProblemP := by
  simp_rw [hdecode]
  rfl

/-- The centered packet in this module, with the following exact parameterization.

def centeredPacket (r : ℝ) : Fin 23 → ℝ := Pi.single 0 r - Pi.single 1 r
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LosslessSourceTransport/Variant3894336cb58c4ffa28843204edd7c8e443d3c9f095cda0bd969f4e06912eef57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LosslessSourceTransport/Variant3894336cb58c4ffa28843204edd7c8e443d3c9f095cda0bd969f4e06912eef57.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a685934070053f49c90fc487058e3c0826f0f35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
