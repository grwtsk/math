# finiteCompensatedReadout_actual_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3803109-9ca5-fe5c-970e-4aeb4a6568fe",
  "kind": "theorem",
  "lexical_name": "finiteCompensatedReadout_actual_eq",
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
  "slug": "finitecompensatedreadout-actual-eq--14d909d72f0d0bd6884e28da",
  "source": {
    "blob": "2bad5643774eb2b4bc84e59a2d525a3b85415354",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14d909d72f0d0bd6884e28daa8a89ef1d58a91da692176811486cf241898b9ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3803109-9ca5-fe5c-970e-4aeb4a6568fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteCompensatedReadout_actual_eq (A : ℝ) :
    finiteCompensatedReadout A ⌊Real.exp (2 * A)⌋₊ =
      EstimatePrimeSmoothDefect.closedPrimeMoment A -
        allNaturalBaseline A ⌊Real.exp (2 * A)⌋₊ := by
  rw [finiteCompensatedReadout_eq_prime_sub_baseline]
  unfold EstimatePrimeSmoothDefect.closedPrimeMoment PrimePowerDescent.primePowerInventory
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < n := by have h := (Finset.mem_Icc.mp hn).1; omega
  rw [PrimePowerDescent.exponentialTest_log _ n hn0]
  ring

/-- The closed endpoint lies above its event and below the next square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectSquareShell/Variant7b6ea05cc86823e09c3cd5beeb7ab001e476b8a627db7dc55f94b592bde37be1.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bad5643774eb2b4bc84e59a2d525a3b85415354` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
