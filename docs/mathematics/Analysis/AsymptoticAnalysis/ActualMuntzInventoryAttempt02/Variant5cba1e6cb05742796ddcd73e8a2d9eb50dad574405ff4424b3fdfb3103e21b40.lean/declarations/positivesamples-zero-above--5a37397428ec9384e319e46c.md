# positiveSamples_zero_above

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80053fe6-d04b-c506-ac51-a93a5fdd0ec5",
  "kind": "theorem",
  "lexical_name": "positiveSamples_zero_above",
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
  "slug": "positivesamples-zero-above--5a37397428ec9384e319e46c",
  "source": {
    "blob": "5a54d7f89cfabf46cf4637f4b5928bf2aa0bede5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a37397428ec9384e319e46cea37afd8726857dd1b4ff478ea7542e8d5d19050",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80053fe6-d04b-c506-ac51-a93a5fdd0ec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveSamples_zero_above {A x : ℝ} (hA : 0 < A) (hx : Real.exp A ≤ x) :
    positiveSamples A x = 0 := by
  unfold positiveSamples
  have hp : 0 < x := (Real.exp_pos A).trans_le hx
  have hz (n : ℕ) : actualLogSource A (((n+1 : ℕ) : ℝ)*x) = 0 := by
    apply actualLogSource_zero_outside hA
    apply Or.inr
    calc
      Real.exp A ≤ x := hx
      _ ≤ ((n+1 : ℕ) : ℝ)*x := by nlinarith [show (0:ℝ)≤(n:ℝ) from Nat.cast_nonneg n]
  simp only [hz,tsum_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualMuntzInventoryAttempt02/Variant5cba1e6cb05742796ddcd73e8a2d9eb50dad574405ff4424b3fdfb3103e21b40.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a54d7f89cfabf46cf4637f4b5928bf2aa0bede5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
