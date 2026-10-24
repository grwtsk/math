# estimate_of_matrix_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98c7006f-0a03-7f41-dd4f-2feeeaa37781",
  "kind": "theorem",
  "lexical_name": "estimate_of_matrix_tail",
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
  "slug": "estimate-of-matrix-tail--0b49cbf9081aa2049507db52",
  "source": {
    "blob": "2e2542de0bf91fcf4b07a8e39af27e63ab1fd97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/FiveModeTailTransport/Variante07f44c9fde995fa895e3ce7555b3c4eb3f79e6cd5d96e0f32a68415bed2a9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b49cbf9081aa2049507db5238c68a5991f7695113231fb24eb2c1d59d218198",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/FiveModeTailTransport/Variante07f44c9fde995fa895e3ce7555b3c4eb3f79e6cd5d96e0f32a68415bed2a9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98c7006f-0a03-7f41-dd4f-2feeeaa37781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_matrix_tail (D R : ℝ) (hR : 1 ≤ R)
    (hg : ∀ A : ℝ, R ≤ A → GammaEntryIntegrability A)
    (hbound : ∀ A : ℝ, R ≤ A →
      -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A))) :
    CorrelationAssembly.EstimateObligation := by
  apply EstimateTailReduction.estimate_of_quadratic_tail_lower_bound
  refine ⟨-D, R, hR, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  rw [← geometric_matrix_dictionary A hA (hg A hRA), ← matrix_dot_eq_contraction]
  exact hbound A hRA

/-- The actual Mertens residual is the full original closed prime-power moment.
The full gamma upper bound is an explicit premise; it is not supplied by a
finite interval certificate for larger scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/FiveModeTailTransport/Variante07f44c9fde995fa895e3ce7555b3c4eb3f79e6cd5d96e0f32a68415bed2a9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/FiveModeTailTransport/Variante07f44c9fde995fa895e3ce7555b3c4eb3f79e6cd5d96e0f32a68415bed2a9c9.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2542de0bf91fcf4b07a8e39af27e63ab1fd97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
