# norm_integral_le_of_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37dac2e3-9c19-87c3-fbb8-137a7b81194d",
  "kind": "theorem",
  "lexical_name": "norm_integral_le_of_norm_le",
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
  "slug": "norm-integral-le-of-norm-le--269c41371c7e81a3f63a89ee",
  "source": {
    "blob": "9c1a5aaebbdb15941b2f15ffaa8616528d0f4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 994,
    "line": 988,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:269c41371c7e81a3f63a89eea1f28c3c1e76a77524917e04c42c133312f300f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37dac2e3-9c19-87c3-fbb8-137a7b81194d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 988–994.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_integral_le_of_norm_le {f : α → G} {g : α → ℝ} (hg : Integrable g μ)
    (h : ∀ᵐ x ∂μ, ‖f x‖ ≤ g x) : ‖∫ x, f x ∂μ‖ ≤ ∫ x, g x ∂μ :=
  calc
    ‖∫ x, f x ∂μ‖ ≤ ∫ x, ‖f x‖ ∂μ := norm_integral_le_integral_norm f
    _ ≤ ∫ x, g x ∂μ := integral_mono_of_nonneg (Eventually.of_forall fun _ => norm_nonneg _) hg h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean#L988).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1a5aaebbdb15941b2f15ffaa8616528d0f4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
