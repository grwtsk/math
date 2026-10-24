# integer_tail_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91747990-856e-d0c6-848f-5d056c2cd29a",
  "kind": "lemma",
  "lexical_name": "integer_tail_identity",
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
  "slug": "integer-tail-identity--0d6f8eb9724b0dd36a77598e",
  "source": {
    "blob": "45c3117e84bd805c0a0c72020247b6e1c76f56bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 279,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d6f8eb9724b0dd36a77598e52bdd694dc534e39885ab7f627eb49b1400573f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91747990-856e-d0c6-848f-5d056c2cd29a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integer_tail_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    CubicPrimitive.tail N s = (s + 3) * tail N s := by
  have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have ha := QuadraticPrimitive.split_integral_tail (CubicPrimitive.integrand_integrable (T := 1) le_rfl hs) hNR
  have hq := QuadraticPrimitive.split_integral_tail (integrand_integrable (T := 1) le_rfl hs) hNR
  change CubicPrimitive.tail 1 s = _ + CubicPrimitive.tail N s at ha
  change tail 1 s = _ + tail N s at hq
  calc
    CubicPrimitive.tail N s = CubicPrimitive.tail 1 s - ∫ t : ℝ in (1 : ℝ)..(N : ℝ), CubicPrimitive.integrand s t := by rw [ha]; ring
    _ = (s + 3) * (tail 1 s - ∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t) := by
      rw [value_identity hs, finite_integral_identity hN hs]; ring
    _ = _ := by rw [hq]; ring

/-- The centered quartic is signed. Its integer value is NOT zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c3117e84bd805c0a0c72020247b6e1c76f56bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
