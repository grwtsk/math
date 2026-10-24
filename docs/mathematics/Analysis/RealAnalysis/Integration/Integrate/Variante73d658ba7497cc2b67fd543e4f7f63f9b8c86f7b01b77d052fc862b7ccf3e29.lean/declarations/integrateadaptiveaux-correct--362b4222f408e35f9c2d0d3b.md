# integrateAdaptiveAux_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09c2dd9f-283d-1995-628c-79839083fd2e",
  "kind": "theorem",
  "lexical_name": "integrateAdaptiveAux_correct",
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
  "slug": "integrateadaptiveaux-correct--362b4222f408e35f9c2d0d3b",
  "source": {
    "blob": "e31ac66ba8caa25b8a447a90a5bb70073f093845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 721,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:362b4222f408e35f9c2d0d3bac60bd7f431c432e949490e4917a165dfec7cb52",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09c2dd9f-283d-1995-628c-79839083fd2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrateAdaptiveAux_correct (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (tol : ℚ) (maxDepth : ℕ)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ∈
    (integrateAdaptiveAux e I tol maxDepth).bound := by
  induction maxDepth generalizing I tol with
  | zero =>
    -- Base case: returns integrateRefined, which is correct
    simp only [integrateAdaptiveAux]
    exact integrateRefined_correct e hsupp I hInt
  | succ n ih =>
    simp only [integrateAdaptiveAux]
    split_ifs with herr
    · -- Error acceptable: returns integrateRefined
      exact integrateRefined_correct e hsupp I hInt
    · -- Subdivide case
      -- Split the integral
      have hsplit := integral_split_mid e I hInt
      rw [hsplit]
      -- Get bounds for each half
      have hInt₁ := intervalIntegrable_splitMid_left e I hInt
      have hInt₂ := intervalIntegrable_splitMid_right e I hInt
      have h1 := ih (splitMid I).1 (tol / 2) hInt₁
      have h2 := ih (splitMid I).2 (tol / 2) hInt₂
      -- The bounds are correct, so their sum contains the sum of integrals
      simp only [splitMid_left_lo, splitMid_left_hi,
                 splitMid_right_lo, splitMid_right_hi] at h1 h2
      exact IntervalRat.mem_add h1 h2

/-- Soundness of the main adaptive integration function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrate/Variante73d658ba7497cc2b67fd543e4f7f63f9b8c86f7b01b77d052fc862b7ccf3e29.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31ac66ba8caa25b8a447a90a5bb70073f093845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
