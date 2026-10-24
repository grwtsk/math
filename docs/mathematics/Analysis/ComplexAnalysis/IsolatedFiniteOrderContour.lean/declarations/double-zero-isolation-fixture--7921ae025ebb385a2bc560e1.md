# double_zero_isolation_fixture

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:326ea938-64f7-aa47-e0f6-04d05606d75f",
  "kind": "theorem",
  "lexical_name": "double_zero_isolation_fixture",
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
  "slug": "double-zero-isolation-fixture--7921ae025ebb385a2bc560e1",
  "source": {
    "blob": "18b494775954f5ce491cdb66df689187be752499",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 190,
    "path": "GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7921ae025ebb385a2bc560e152964d35be2e75c7ae585235962de5a4ca8fd004",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:326ea938-64f7-aa47-e0f6-04d05606d75f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem double_zero_isolation_fixture :
    (∀ z : ℂ, z ^ 2 = 0 → z = 0) ∧
      deriv (fun z : ℂ => z ^ 2) 0 = 0 ∧
      analyticOrderAt (fun z : ℂ => z ^ 2) 0 = (2 : ℕ∞) := by
  refine ⟨?_, ?_, ?_⟩
  · intro z zero
    by_contra nonzero
    exact pow_ne_zero 2 nonzero zero
  · simpa using (hasDerivAt_pow 2 (0 : ℂ)).deriv
  · have analytic : AnalyticAt ℂ (fun z : ℂ => z ^ 2) 0 := analyticAt_id.pow 2
    apply analytic.analyticOrderAt_eq_natCast.mpr
    refine ⟨fun _ => (1 : ℂ), analyticAt_const, one_ne_zero, ?_⟩
    exact Filter.Eventually.of_forall (fun z => by simp [smul_eq_mul])

/-- A pure multiplicity-two control: subtracting residue one leaves a genuine pole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IsolatedFiniteOrderContour.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18b494775954f5ce491cdb66df689187be752499` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
