# centeredTwistedPsiStep_isBigO_zero_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d49b31f-1c27-439f-7b60-7adb07f45cc0",
  "kind": "theorem",
  "lexical_name": "centeredTwistedPsiStep_isBigO_zero_rpow",
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
  "slug": "centeredtwistedpsistep-isbigo-zero-rpow--0317e7fa2b43c94f4dfa99ee",
  "source": {
    "blob": "b6000020806bd4e60fb81b36430dd648e001b3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 214,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0317e7fa2b43c94f4dfa99eee203c36fc5e68fc24cc2a80cf2124ca2976b5689",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d49b31f-1c27-439f-7b60-7adb07f45cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredTwistedPsiStep_isBigO_zero_rpow
    {q : ℕ} (χ : DirichletCharacter ℂ q) (b : ℝ) :
    centeredTwistedPsiStep χ =O[nhdsWithin (0 : ℝ) (Ioi 0)]
      (fun t : ℝ ↦ t ^ (-b)) := by
  exact (isBigO_zero (fun t : ℝ ↦ t ^ (-b))
      (nhdsWithin (0 : ℝ) (Ioi 0))).congr'
    (centeredTwistedPsiStep_eventuallyEq_zero_at_zero χ).symm EventuallyEq.rfl

/-- The literal centered Mellin candidate.  Convergence and holomorphy are
properties, not part of this definition. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variantb5e7bce8bb7e0ef1756fbfd4a5c672959f60d847ed2e58a54bff4470dae7053b.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6000020806bd4e60fb81b36430dd648e001b3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
