# complexRampAntiderivative_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b929493f-f47e-a1e9-9c4e-8bdaf7bc74d7",
  "kind": "theorem",
  "lexical_name": "complexRampAntiderivative_tendsto",
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
  "slug": "complexrampantiderivative-tendsto--95293c2d4eff2546d56f8c28",
  "source": {
    "blob": "6c101b97d126a214bda610c0b22d9b65f41ed84b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 163,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95293c2d4eff2546d56f8c28df480b153171d65ddec7c19cb1554c40fcc5284f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b929493f-f47e-a1e9-9c4e-8bdaf7bc74d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem complexRampAntiderivative_tendsto {z : ℂ} (hz : 0 < z.re) (a : ℝ) :
    Tendsto (complexRampAntiderivative z a) atTop (𝓝 0) := by
  have h0 := complex_exp_monomial_zero hz 0
  have h1 := complex_exp_monomial_zero hz 1
  have h := (((h1.sub (h0.const_mul (a : ℂ))).div_const z).add
    (h0.div_const (z^2))).neg
  convert! h using 1
  · ext t
    dsimp [complexRampAntiderivative]
    push_cast
    ring
  · simp

/-- The genuine single closed ramp has its exact initial improper transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative10/Variant817056213237be32dc4e70adabaa3f639245ba5f5e33a8742ad6ea4c95f3e536.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c101b97d126a214bda610c0b22d9b65f41ed84b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
