# arithmetic_contraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e776de4-7c35-5619-67d3-c24303d0e6ee",
  "kind": "theorem",
  "lexical_name": "arithmetic_contraction",
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
  "slug": "arithmetic-contraction--14d1944abb8b5b580c471d4b",
  "source": {
    "blob": "204bf67813058a0da0860595ebf8705d5833f72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variantcae83393942651bf5001995a99fc8e1cef363a6784b3ffca57f6cf5b49ca5c6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14d1944abb8b5b580c471d4b0fe2f17852fee817d17c86c4e0420957059d3273",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variantcae83393942651bf5001995a99fc8e1cef363a6784b3ffca57f6cf5b49ca5c6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e776de4-7c35-5619-67d3-c24303d0e6ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmetic_contraction (A : ℝ) (hA : 1 ≤ A) :
    (∑ i : Fin 5, ∑ j : Fin 5,
      alpha A i * alpha A j * arithmeticEntry A i j) =
        -2 * primePowerContribution explicitSecondDerivative A := by
  rw [actual_closed_arithmetic A hA]
  unfold arithmeticEntry
  simp_rw [actual_correlation_reconstruction A _ hA, Finset.mul_sum]
  simp_rw [Finset.sum_comm (s := (Finset.univ : Finset (Fin 5)))
    (t := Finset.Icc 2 ⌊Real.exp (2*A)⌋₊)]
  apply Finset.sum_congr rfl
  intro n _
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variantcae83393942651bf5001995a99fc8e1cef363a6784b3ffca57f6cf5b49ca5c6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeMatrix/Variantcae83393942651bf5001995a99fc8e1cef363a6784b3ffca57f6cf5b49ca5c6b.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `204bf67813058a0da0860595ebf8705d5833f72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
