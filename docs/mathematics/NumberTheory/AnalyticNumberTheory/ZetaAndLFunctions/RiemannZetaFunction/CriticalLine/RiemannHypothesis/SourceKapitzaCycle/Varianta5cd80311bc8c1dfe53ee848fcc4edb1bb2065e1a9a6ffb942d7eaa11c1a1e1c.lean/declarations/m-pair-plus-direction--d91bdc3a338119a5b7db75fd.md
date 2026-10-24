# M_pair_plus_direction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:370d041f-5b66-5b8d-1e82-0768b1e94da3",
  "kind": "theorem",
  "lexical_name": "M_pair_plus_direction",
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
  "slug": "m-pair-plus-direction--d91bdc3a338119a5b7db75fd",
  "source": {
    "blob": "b439d4d335a6f166803a0b710745dc73bf8b0b0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 249,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Varianta5cd80311bc8c1dfe53ee848fcc4edb1bb2065e1a9a6ffb942d7eaa11c1a1e1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d91bdc3a338119a5b7db75fd81e469d636307508a8520e16e3a1c71921ecce4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Varianta5cd80311bc8c1dfe53ee848fcc4edb1bb2065e1a9a6ffb942d7eaa11c1a1e1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:370d041f-5b66-5b8d-1e82-0768b1e94da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem M_pair_plus_direction (b₁ b₂ : ℝ) :
    (M b₂ * M b₁).mulVec (![1, 1] : Fin 2 → ℝ) =
      -Real.exp (b₂ - b₁) • (![1, 1] : Fin 2 → ℝ) := by
  rw [M_pair]
  ext i
  fin_cases i <;>
    simp [H, hyperbolic, Matrix.mulVec, dotProduct, Fin.sum_univ_two,
      ← Real.cosh_add_sinh]

/-- The varying invariant metric retains both reciprocal conditioning weights. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Varianta5cd80311bc8c1dfe53ee848fcc4edb1bb2065e1a9a6ffb942d7eaa11c1a1e1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaCycle/Varianta5cd80311bc8c1dfe53ee848fcc4edb1bb2065e1a9a6ffb942d7eaa11c1a1e1c.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b439d4d335a6f166803a0b710745dc73bf8b0b0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
