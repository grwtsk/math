# primitiveCorrelationZero_fourth_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a4b520d-006b-cf46-0a0b-99a3d3d19256",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationZero_fourth_deriv",
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
  "slug": "primitivecorrelationzero-fourth-deriv--ff1999d71c79c33eb4f0f2d4",
  "source": {
    "blob": "ad79cb3f1e4c216dc1f819b9eeb542508da5e4ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff1999d71c79c33eb4f0f2d4df77c1bf104944e4c05c5b9e29be81f6b1842990",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a4b520d-006b-cf46-0a0b-99a3d3d19256`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCorrelationZero_fourth_deriv {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (deriv (deriv (primitiveCorrelationZero A)))) t =
      primitiveCorrelationTwo A t := by
  have he : deriv (deriv (primitiveCorrelationZero A)) =
      fun s => -primitiveCorrelationOne A s :=
    funext (primitiveCorrelationZero_second_deriv_eq_neg_one hA)
  have he1 : deriv (fun s => -primitiveCorrelationOne A s) =
      fun s => -deriv (primitiveCorrelationOne A) s := by
    funext s
    exact deriv.fun_neg
  rw [he, he1, deriv.fun_neg, primitiveCorrelationOne_second_deriv_eq_neg_two hA, neg_neg]

/-- Exact second differentiation recovers the unchanged actual source at every real shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePositivePeanoPrimitive/Variant9e2a806da6e6223d4ee0bbeb9d4d363daf23ec081cfe64db01ac66329f696b96.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad79cb3f1e4c216dc1f819b9eeb542508da5e4ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
