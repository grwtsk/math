# integrable_pow_of_mem_interior_integrableExpSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c15d95bf-2968-75a9-347c-7bd087946d1b",
  "kind": "lemma",
  "lexical_name": "integrable_pow_of_mem_interior_integrableExpSet",
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
  "slug": "integrable-pow-of-mem-interior-integrableexpset--33d488afc94e9c586d6ad48d",
  "source": {
    "blob": "a1f6ad94c930db4cb7f7a8588e8538234d0f6331",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 542,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variantda1d743c9fd9745735de43adc4a1accf18da234941f13220116f6725df051261.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33d488afc94e9c586d6ad48d866346cb6ef353ae6d7e3b789694ec34a77de480",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variantda1d743c9fd9745735de43adc4a1accf18da234941f13220116f6725df051261.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c15d95bf-2968-75a9-347c-7bd087946d1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_pow_of_mem_interior_integrableExpSet
    (h : 0 ∈ interior (integrableExpSet X μ)) (n : ℕ) :
    Integrable (fun ω ↦ X ω ^ n) μ := by
  convert! integrable_pow_mul_exp_of_mem_interior_integrableExpSet h n
  simp

/-- If 0 belongs to the interior of `integrableExpSet X μ`, then `X` is in `ℒp` for all
finite `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variantda1d743c9fd9745735de43adc4a1accf18da234941f13220116f6725df051261.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variantda1d743c9fd9745735de43adc4a1accf18da234941f13220116f6725df051261.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1f6ad94c930db4cb7f7a8588e8538234d0f6331` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
