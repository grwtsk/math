# iIndepSet.condExp_indicator_filtrationOfSet_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa8bc9fb-a908-e819-99c9-0970b007cfaf",
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
  "slug": "iindepset-condexp-indicator-filtrationofset-ae-eq--aa8ef6bb729982ef65b63863",
  "source": {
    "blob": "49659ab170c2664f7e372018be0badfc792e4663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant5f36df5a3721e7fb52e4b0ba7c4677c66d58a296ba3d45ab0f7eafcbf8ecac27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa8ef6bb729982ef65b63863306bf8102845c11ccb42e37249206b4b89a68caa",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant5f36df5a3721e7fb52e4b0ba7c4677c66d58a296ba3d45ab0f7eafcbf8ecac27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa8bc9fb-a908-e819-99c9-0970b007cfaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iIndepSet.condExp_indicator_filtrationOfSet_ae_eq (hsm : ∀ n, MeasurableSet (s n))
    (hs : iIndepSet s μ) (hij : i < j) :
    μ[(s j).indicator (fun _ => 1 : Ω → ℝ) | filtrationOfSet hsm i] =ᵐ[μ]
    fun _ => μ.real (s j) := by
  rw [Filtration.filtrationOfSet_eq_natural (β := fun _ ↦ ℝ) hsm]
  refine (iIndepFun.condExp_natural_ae_eq_of_lt _ hs.iIndepFun_indicator hij).trans ?_
  simp only [integral_indicator_const _ (hsm _), smul_eq_mul, mul_one]; rfl

open Filter

/-- **The second Borel-Cantelli lemma**: Given a sequence of independent sets `(sₙ)` such that
`∑ n, μ sₙ = ∞`, `limsup sₙ` has measure 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant5f36df5a3721e7fb52e4b0ba7c4677c66d58a296ba3d45ab0f7eafcbf8ecac27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BorelCantelli/Variant5f36df5a3721e7fb52e4b0ba7c4677c66d58a296ba3d45ab0f7eafcbf8ecac27.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49659ab170c2664f7e372018be0badfc792e4663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
