# ConvexOn.secant_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bf43e63-c5a5-481f-8199-46eae31c7b3c",
  "kind": "theorem",
  "lexical_name": "ConvexOn.secant_mono",
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
  "slug": "convexon-secant-mono--5df3f4664fd1c7726f571f5e",
  "source": {
    "blob": "7ed46b1a2f12438a1dd3dda4d80abb002aaf65b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 261,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5df3f4664fd1c7726f571f5e8e6d0e4e4899cc0fd0e2e869aa7ea60e4b6761c3",
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

Occurrence: `result:9bf43e63-c5a5-481f-8199-46eae31c7b3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ConvexOn.secant_mono (hf : ConvexOn 𝕜 s f) {a x y : 𝕜} (ha : a ∈ s) (hx : x ∈ s)
    (hy : y ∈ s) (hxa : x ≠ a) (hya : y ≠ a) (hxy : x ≤ y) :
    (f x - f a) / (x - a) ≤ (f y - f a) / (y - a) := by
  rcases eq_or_lt_of_le hxy with (rfl | hxy)
  · simp
  rcases lt_or_gt_of_ne hxa with hxa | hxa
  · rcases lt_or_gt_of_ne hya with hya | hya
    · convert hf.secant_mono_aux3 hx ha hxy hya using 1 <;> rw [← neg_div_neg_eq] <;> field_simp
    · convert hf.slope_mono_adjacent hx hy hxa hya using 1
      rw [← neg_div_neg_eq]; field_simp
  · exact hf.secant_mono_aux2 ha hy hxa hxy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Slope/Variant251ecb65cd3273afb0a20f4db91dd29491c128afa059c01f59d9011fdfcf0cb2.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ed46b1a2f12438a1dd3dda4d80abb002aaf65b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
