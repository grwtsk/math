# canonical_tent_evaluation_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bfc0ff8-0f27-31e3-6153-b33bff047370",
  "kind": "theorem",
  "lexical_name": "canonical_tent_evaluation_error",
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
  "slug": "canonical-tent-evaluation-error--11d51517a5de7c7b3194da3f",
  "source": {
    "blob": "c3cca8fc7ed75f86f8deb71a6a23c6c0b30220b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalZetaTent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11d51517a5de7c7b3194da3fe37ff5138e2ae1b0f0bf689b0d208df5994a554f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalZetaTent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bfc0ff8-0f27-31e3-6153-b33bff047370`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem canonical_tent_evaluation_error (x h T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hT : 1 ≤ T)
    (hcount : ∀ t, T ≤ t → (heightCount t : ℝ) ≤ t * Real.log t)
    (evaluated : ℂ) (E : ℝ)
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
      evaluated‖ ≤ E) :
    ‖(∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) - evaluated‖ ≤
      tentTailBudget x h 1 T + E := by
  exact tent_full_sum_evaluation_error x h 1 T hh ha (by norm_num) hT
    (heightHead T) multiplicity (fun z : ZeroPoint => z.1)
    (fun z hz => (mem_heightHead T z).mpr hz)
    (fun z _ => (point_mem_strip z).2.le)
    ((heightCount_bound_iff T).mp hcount) evaluated E heval

/-- No freely chosen zero family, multiplicity, horizontal bound or head-cover
premise remains. The actual count theorem and complete first-Riesz identity
are still unproved inputs; no favorable all-interval margin is constructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalZetaTent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalZetaTent.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3cca8fc7ed75f86f8deb71a6a23c6c0b30220b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
