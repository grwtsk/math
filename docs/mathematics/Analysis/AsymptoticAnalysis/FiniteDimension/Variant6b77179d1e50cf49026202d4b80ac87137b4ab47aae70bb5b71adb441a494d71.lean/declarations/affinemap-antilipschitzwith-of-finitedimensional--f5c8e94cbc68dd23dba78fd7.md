# AffineMap.antilipschitzWith_of_finiteDimensional

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a99d65ee-0bc8-ebc3-cf83-d2dba0907901",
  "kind": "theorem",
  "lexical_name": "AffineMap.antilipschitzWith_of_finiteDimensional",
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
  "slug": "affinemap-antilipschitzwith-of-finitedimensional--f5c8e94cbc68dd23dba78fd7",
  "source": {
    "blob": "ed527ab706d4ffa4d76783100b9caa4100d7cbf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 262,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5c8e94cbc68dd23dba78fd77c7c30129c63d07dc1697a191757ca24d5dfcdfa",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a99d65ee-0bc8-ebc3-cf83-d2dba0907901`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineMap.antilipschitzWith_of_finiteDimensional {PE PF : Type*} [MetricSpace PE]
    [NormedAddTorsor E PE] [MetricSpace PF] [NormedAddTorsor F PF] [FiniteDimensional 𝕜 E]
    {f : PE →ᵃ[𝕜] PF} (hf : Function.Injective f) :
    ∃ K : ℝ≥0, AntilipschitzWith K f := by
  obtain ⟨K, -, hK⟩ := f.linear.injective_iff_antilipschitz.mp (f.linear_injective_iff.mpr hf)
  refine ⟨K, AntilipschitzWith.of_le_mul_dist fun x y ↦ ?_⟩
  rw [dist_eq_norm_vsub E, dist_eq_norm_vsub F, ← f.linearMap_vsub]
  exact ZeroHomClass.bound_of_antilipschitz f.linear hK (x -ᵥ y)

open Function in
/-- The set of injective continuous linear maps `E → F` is open,
  if `E` is finite-dimensional over a complete field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant6b77179d1e50cf49026202d4b80ac87137b4ab47aae70bb5b71adb441a494d71.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed527ab706d4ffa4d76783100b9caa4100d7cbf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
