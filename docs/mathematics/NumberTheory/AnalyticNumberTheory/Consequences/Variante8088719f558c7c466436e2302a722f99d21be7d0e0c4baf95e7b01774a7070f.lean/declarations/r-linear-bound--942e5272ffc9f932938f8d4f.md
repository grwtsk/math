# R_linear_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c073678a-426a-da8d-4116-87189a7344a2",
  "kind": "lemma",
  "lexical_name": "R_linear_bound",
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
  "slug": "r-linear-bound--942e5272ffc9f932938f8d4f",
  "source": {
    "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1863,
    "line": 1856,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:942e5272ffc9f932938f8d4fb9309851acfb00fc2378e3eca07d4d8fe3433ab6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c073678a-426a-da8d-4116-87189a7344a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1856–1863.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma R_linear_bound (ε : ℝ) (hε : 0 < ε) : ∃ C, 0 ≤ C ∧ ∀ y, 1 ≤ y → |R y| ≤ ε * y + C := by
  obtain ⟨A, hA⟩ : ∃ A : ℝ, 0 < A ∧ ∀ y : ℝ, A ≤ y → |R y| ≤ ε * y := by
    have := R_isLittleO.def hε
    rw [Filter.eventually_atTop] at this; rcases this with ⟨A, hA⟩ ; exact ⟨Max.max A 1, by positivity, fun y hy => by simpa [abs_of_nonneg (show 0 ≤ y by linarith [le_max_right A 1])] using hA y (le_trans (le_max_left A 1) hy)⟩
  obtain ⟨CA, hCA⟩ : ∃ CA : ℝ, ∀ y ∈ Set.Icc 0 A, |R y| ≤ CA := by
    exact R_locally_bounded A hA.1.le |> fun ⟨CA, hCA⟩ => ⟨CA, fun y hy => hCA y hy⟩
  exact ⟨Max.max CA 0, by positivity, fun y hy => if hy' : y ≤ A then le_trans (hCA y ⟨by linarith, by linarith⟩) (by linarith [le_max_left CA 0, le_max_right CA 0, show 0 ≤ ε * y by nlinarith]) else le_trans (hA.2 y (by linarith)) (by linarith [le_max_left CA 0, le_max_right CA 0, show 0 ≤ ε * y by nlinarith])⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean#L1856).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
