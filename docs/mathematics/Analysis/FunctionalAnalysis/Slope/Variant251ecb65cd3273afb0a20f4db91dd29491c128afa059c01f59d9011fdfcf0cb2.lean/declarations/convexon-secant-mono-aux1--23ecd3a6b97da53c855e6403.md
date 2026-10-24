# ConvexOn.secant_mono_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e15751a-1831-f991-436d-1d2364d439e2",
  "kind": "theorem",
  "lexical_name": "ConvexOn.secant_mono_aux1",
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
  "slug": "convexon-secant-mono-aux1--23ecd3a6b97da53c855e6403",
  "source": {
    "blob": "7ed46b1a2f12438a1dd3dda4d80abb002aaf65b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 227,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23ecd3a6b97da53c855e6403a8b0d4892f4b97cc3f1ed35c46c244ffcdacfeeb",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e15751a-1831-f991-436d-1d2364d439e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexOn.secant_mono_aux1 (hf : ConvexOn 𝕜 s f) {x y z : 𝕜} (hx : x ∈ s) (hz : z ∈ s)
    (hxy : x < y) (hyz : y < z) : (z - x) * f y ≤ (z - y) * f x + (y - x) * f z := by
  have hxy' : 0 < y - x := by linarith
  have hyz' : 0 < z - y := by linarith
  have hxz' : 0 < z - x := by linarith
  rw [← le_div_iff₀' hxz']
  have ha : 0 ≤ (z - y) / (z - x) := by positivity
  have hb : 0 ≤ (y - x) / (z - x) := by positivity
  calc
    f y = f ((z - y) / (z - x) * x + (y - x) / (z - x) * z) := ?_
    _ ≤ (z - y) / (z - x) * f x + (y - x) / (z - x) * f z := hf.2 hx hz ha hb ?_
    _ = ((z - y) * f x + (y - x) * f z) / (z - x) := ?_
  · congr 1
    field_simp
    ring
  · field_simp
  · field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ed46b1a2f12438a1dd3dda4d80abb002aaf65b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
