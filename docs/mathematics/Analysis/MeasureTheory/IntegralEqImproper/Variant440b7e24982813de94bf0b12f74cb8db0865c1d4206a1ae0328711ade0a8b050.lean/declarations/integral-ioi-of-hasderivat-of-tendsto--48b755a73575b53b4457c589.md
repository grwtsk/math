# integral_Ioi_of_hasDerivAt_of_tendsto'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68bff73c-0dc6-6b23-f6f9-9b1b21bc3d2f",
  "kind": "theorem",
  "lexical_name": "integral_Ioi_of_hasDerivAt_of_tendsto'",
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
  "slug": "integral-ioi-of-hasderivat-of-tendsto--48b755a73575b53b4457c589",
  "source": {
    "blob": "6a4f05e3dd7c9efcde84ecdf1c67e3a6efcd9434",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 696,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant440b7e24982813de94bf0b12f74cb8db0865c1d4206a1ae0328711ade0a8b050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48b755a73575b53b4457c589337e797648b62fdfd616e2a3a93d7514436bca65",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant440b7e24982813de94bf0b12f74cb8db0865c1d4206a1ae0328711ade0a8b050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68bff73c-0dc6-6b23-f6f9-9b1b21bc3d2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 696–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_Ioi_of_hasDerivAt_of_tendsto' (hderiv : ∀ x ∈ Ici a, HasDerivAt f (f' x) x)
    (f'int : IntegrableOn f' (Ioi a)) (hf : Tendsto f atTop (𝓝 m)) :
    ∫ x in Ioi a, f' x = m - f a := by
  refine integral_Ioi_of_hasDerivAt_of_tendsto (fun x hx ↦ ?_) (fun x hx => hderiv x hx.out.le)
    f'int hf
  exact (hderiv x hx).continuousAt.continuousWithinAt
#align measure_theory.integral_Ioi_of_has_deriv_at_of_tendsto' MeasureTheory.integral_Ioi_of_hasDerivAt_of_tendsto'

/-- When a function has a limit at infinity, and its derivative is nonnegative, then the derivative
is automatically integrable on `(a, +∞)`. Version assuming differentiability
on `(a, +∞)` and continuity on `[a, +∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant440b7e24982813de94bf0b12f74cb8db0865c1d4206a1ae0328711ade0a8b050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant440b7e24982813de94bf0b12f74cb8db0865c1d4206a1ae0328711ade0a8b050.lean#L696).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a4f05e3dd7c9efcde84ecdf1c67e3a6efcd9434` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
