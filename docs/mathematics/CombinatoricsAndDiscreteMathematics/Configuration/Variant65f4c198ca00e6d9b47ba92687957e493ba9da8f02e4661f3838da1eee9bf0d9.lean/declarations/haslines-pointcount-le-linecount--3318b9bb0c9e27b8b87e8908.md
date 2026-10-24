# HasLines.pointCount_le_lineCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d81a22e-5093-cdf3-e794-f9de476d6b40",
  "kind": "theorem",
  "lexical_name": "HasLines.pointCount_le_lineCount",
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
  "slug": "haslines-pointcount-le-linecount--3318b9bb0c9e27b8b87e8908",
  "source": {
    "blob": "49f83a1401d6b840707153706b768b5e2bd1d8f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3318b9bb0c9e27b8b87e8908cb768a16b9f0f29d23d27e852ac368152d067034",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d81a22e-5093-cdf3-e794-f9de476d6b40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasLines.pointCount_le_lineCount [HasLines P L] {p : P} {l : L} (h : p ∉ l)
    [Finite { l : L // p ∈ l }] : pointCount P l ≤ lineCount L p := by
  by_cases hf : Infinite { p : P // p ∈ l }
  · exact (le_of_eq Nat.card_eq_zero_of_infinite).trans (zero_le (lineCount L p))
  haveI := fintypeOfNotInfinite hf
  cases nonempty_fintype { l : L // p ∈ l }
  rw [lineCount, pointCount, Nat.card_eq_fintype_card, Nat.card_eq_fintype_card]
  have : ∀ p' : { p // p ∈ l }, p ≠ p' := fun p' hp' => h ((congr_arg (· ∈ l) hp').mpr p'.2)
  exact
    Fintype.card_le_of_injective (fun p' => ⟨mkLine (this p'), (mkLine_ax (this p')).1⟩)
      fun p₁ p₂ hp =>
      Subtype.ext ((eq_or_eq p₁.2 p₂.2 (mkLine_ax (this p₁)).2
            ((congr_arg (_ ∈ ·) (Subtype.ext_iff.mp hp)).mpr (mkLine_ax (this p₂)).2)).resolve_right
          fun h' => (congr_arg (p ∉ ·) h').mp h (mkLine_ax (this p₁)).1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant65f4c198ca00e6d9b47ba92687957e493ba9da8f02e4661f3838da1eee9bf0d9.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49f83a1401d6b840707153706b768b5e2bd1d8f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
