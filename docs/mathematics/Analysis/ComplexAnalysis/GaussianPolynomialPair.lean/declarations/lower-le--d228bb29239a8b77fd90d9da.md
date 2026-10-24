# lower_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a61629b8-01fc-b34e-9b30-1fd1ea086557",
  "kind": "lemma",
  "lexical_name": "lower_le",
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
  "slug": "lower-le--d228bb29239a8b77fd90d9da",
  "source": {
    "blob": "169432b99b1099a91d8d3700e9b516df9603aa70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 189,
    "path": "GRWTSK/Analysis/Complex/GaussianPolynomialPair.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d228bb29239a8b77fd90d9dad9b8af9b45056cf54553144df0dea36eb7114412",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a61629b8-01fc-b34e-9b30-1fd1ea086557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lower_le {A : Disk} {z : ℂ} (hz : A.Valid z) : (A.lower : ℝ) ≤ ‖z‖ := by
  have hcoord : max |A.center.value.re| |A.center.value.im| ≤ ‖A.center.value‖ :=
    max_le (Complex.abs_re_le_norm _) (Complex.abs_im_le_norm _)
  have ht : ‖A.center.value‖ ≤ ‖z‖+(A.radius : ℝ) := by
    have he : A.center.value=z-(z-A.center.value) := by ring
    rw [he]
    exact (norm_sub_le _ _).trans (add_le_add_left hz _)
  rw [lower,Rat.cast_max,Rat.cast_zero,Rat.cast_sub,Rat.cast_max,Rat.cast_abs,Rat.cast_abs]
  apply max_le (norm_nonneg _)
  change max |A.center.value.re| |A.center.value.im|-(A.radius : ℝ) ≤ ‖z‖
  linarith

end Disk

/-- The q*odd cross term is retained in the even-channel recursion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/GaussianPolynomialPair.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/GaussianPolynomialPair.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169432b99b1099a91d8d3700e9b516df9603aa70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
