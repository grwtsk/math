# upperProductSummatory_eq_floor_hyperbola

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31addbb0-8399-016b-b4d2-2700954458cf",
  "kind": "theorem",
  "lexical_name": "upperProductSummatory_eq_floor_hyperbola",
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
  "slug": "upperproductsummatory-eq-floor-hyperbola--e5a3f6556f583965fcbc01ab",
  "source": {
    "blob": "6568cb2791fd9bdb3d515e0fdc28254235460a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 162,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a3f6556f583965fcbc01ab958af98b28a5deba5fc3b6f39fcfc5d656c96662",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31addbb0-8399-016b-b4d2-2700954458cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperProductSummatory_eq_floor_hyperbola (N : ℕ) (x : ℝ) (hx : 0 ≤ x) :
    UpperBoundaryAbel.upperProductSummatory N x =
      2 * (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ) *
          ∑ j ∈ Ioc (N / 2) (min N ⌊x / (i : ℝ)⌋₊),
            (ArithmeticFunction.moebius j : ℝ)) -
      (∑ i ∈ Ioc (N / 2) (min N ⌊Real.sqrt x⌋₊),
        (ArithmeticFunction.moebius i : ℝ)) ^ 2 := by
  rw [upperProductSummatory_eq_hyperbola N x hx, upperHyperbola_eq_floor_sum N x hx,
    upperSmallSum_eq_floor_sum N x hx]

/-- The finite cutoff Möbius sum is measurable despite its closed jump points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryHyperbola/Variantb130d315fc468f4c5bd78bf34a309a9c3c16c4f7612d54139798a2399f147942.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6568cb2791fd9bdb3d515e0fdc28254235460a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
