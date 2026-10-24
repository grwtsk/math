# actualClosedAbsolutePrimeMoment_eventually_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e78a624-e7dd-afdc-9e61-79ea62f8a72b",
  "kind": "theorem",
  "lexical_name": "actualClosedAbsolutePrimeMoment_eventually_lower",
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
  "slug": "actualclosedabsoluteprimemoment-eventually-lower--110ca75f92f0de0bc7f3294a",
  "source": {
    "blob": "2c8962ea7dd3badca8678e09662c96feae19abcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187fSourceActualAbso/Variante974cd68318f5145372575e1fa58b78476ede9d5f3b2b95c4d1e6a7ce8baa8fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:110ca75f92f0de0bc7f3294ae6e1fb8965d505b5ac3c2390084102bf8570194a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187fSourceActualAbso/Variante974cd68318f5145372575e1fa58b78476ede9d5f3b2b95c4d1e6a7ce8baa8fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e78a624-e7dd-afdc-9e61-79ea62f8a72b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedAbsolutePrimeMoment_eventually_lower :
    ∃ R : ℝ, 20000000000000 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 ≤
        actualClosedAbsolutePrimeMoment A := by
  obtain ⟨R,hR,hbound⟩ := actualNegativeEdgeComplement_eventually_positive_growth
  exact ⟨R,hR,fun A hA => (hbound A hA).trans (complement_le_absoluteMoment A)⟩

/-- This concerns the actual weighted prime-power terms, rather than raw coefficient labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187fSourceActualAbso/Variante974cd68318f5145372575e1fa58b78476ede9d5f3b2b95c4d1e6a7ce8baa8fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2720f7a54bb6d24bc7be251934d7501cb6fff716492357461e4b639df333187fSourceActualAbso/Variante974cd68318f5145372575e1fa58b78476ede9d5f3b2b95c4d1e6a7ce8baa8fc.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c8962ea7dd3badca8678e09662c96feae19abcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
