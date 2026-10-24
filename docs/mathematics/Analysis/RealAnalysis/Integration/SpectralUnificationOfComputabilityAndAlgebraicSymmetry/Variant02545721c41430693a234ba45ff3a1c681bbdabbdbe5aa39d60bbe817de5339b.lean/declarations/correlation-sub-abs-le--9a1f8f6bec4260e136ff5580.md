# correlation_sub_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ab17103-de5f-7846-d6a1-1abb08d9252c",
  "kind": "theorem",
  "lexical_name": "correlation_sub_abs_le",
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
  "slug": "correlation-sub-abs-le--9a1f8f6bec4260e136ff5580",
  "source": {
    "blob": "b2bf3431c600444c752ecb8e3541f77d463cb19f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02545721c41430693a234ba45ff3a1c681bbdabbdbe5aa39d60bbe817de5339b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a1f8f6bec4260e136ff5580127a75810953a9a445383c5b6590fffab8c7f15f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02545721c41430693a234ba45ff3a1c681bbdabbdbe5aa39d60bbe817de5339b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ab17103-de5f-7846-d6a1-1abb08d9252c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlation_sub_abs_le {f g : ℝ → ℝ}
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) (t : ℝ) :
    |(∫ x, f x * f (x - t)) - (∫ x, g x * g (x - t))| ≤
      lpNorm (fun x ↦ f x - g x) 2 volume *
        (lpNorm f 2 volume + lpNorm g 2 volume) := by
  have he : MemLp (fun x ↦ f x - g x) 2 volume := hf.sub hg
  have ht : MemLp (fun x ↦ f (x - t) - g (x - t)) 2 volume :=
    memLp_translate he t
  have hid : (∫ x, f x * f (x - t)) - (∫ x, g x * g (x - t)) =
      (∫ x, (f x - g x) * f (x - t)) +
      (∫ x, g x * (f (x - t) - g (x - t))) := by
    rw [← integral_sub (correlation_integrable hf t) (correlation_integrable hg t),
      ← integral_add (f := fun x ↦ (f x - g x) * f (x - t))
        (g := fun x ↦ g x * (f (x - t) - g (x - t)))
        (he.integrable_mul (memLp_translate hf t)) (hg.integrable_mul ht)]
    apply integral_congr_ae
    exact Filter.Eventually.of_forall (fun x ↦ by dsimp; ring)
  rw [hid]
  calc
    _ ≤ |∫ x, (f x - g x) * f (x - t)| +
        |∫ x, g x * (f (x - t) - g (x - t))| := abs_add_le _ _
    _ ≤ lpNorm (fun x ↦ f x - g x) 2 volume * lpNorm f 2 volume +
        lpNorm g 2 volume * lpNorm (fun x ↦ f x - g x) 2 volume := by
      simpa only [lpNorm_translate hf t, lpNorm_translate he t] using
        add_le_add (integral_mul_abs_le he (memLp_translate hf t))
          (integral_mul_abs_le hg ht)
    _ = _ := by ring

/-- A continuous moment weight restricted to the common compact support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02545721c41430693a234ba45ff3a1c681bbdabbdbe5aa39d60bbe817de5339b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant02545721c41430693a234ba45ff3a1c681bbdabbdbe5aa39d60bbe817de5339b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2bf3431c600444c752ecb8e3541f77d463cb19f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
