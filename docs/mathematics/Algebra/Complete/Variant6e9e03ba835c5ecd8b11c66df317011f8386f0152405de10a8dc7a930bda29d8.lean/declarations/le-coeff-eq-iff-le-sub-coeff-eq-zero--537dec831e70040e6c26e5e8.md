# le_coeff_eq_iff_le_sub_coeff_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a72433a-13b4-90b1-8ebc-295490836562",
  "kind": "theorem",
  "lexical_name": "le_coeff_eq_iff_le_sub_coeff_eq_zero",
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
  "slug": "le-coeff-eq-iff-le-sub-coeff-eq-zero--537dec831e70040e6c26e5e8",
  "source": {
    "blob": "053ade2ccb9886d3986372bd5d49f38607684563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 41,
    "path": "GRWTSK/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:537dec831e70040e6c26e5e888eaac62e7f9099ca832a6eca8e8b3caa7f19a2e",
  "verification": {
    "reference": "docs/verification/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a72433a-13b4-90b1-8ebc-295490836562`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_coeff_eq_iff_le_sub_coeff_eq_zero {x y : 𝕎 k} {n : ℕ} :
    (∀ i < n, x.coeff i = y.coeff i) ↔ ∀ i < n, (x - y).coeff i = 0 := by
  calc
  _ ↔ x.truncate n = y.truncate n := by
    refine ⟨fun h => ?_, fun h i hi => ?_⟩
    · ext i
      simp [h i]
    · rw [← coeff_truncate x ⟨i, hi⟩, ← coeff_truncate y ⟨i, hi⟩, h]
  _ ↔ (x - y).truncate n = 0 := by
    simp only [map_sub, sub_eq_zero]
  _ ↔ _ := by simp only [← mem_ker_truncate, RingHom.mem_ker]

section PerfectRing

variable [CharP k p] [PerfectRing k p]

/--
If `k` is a perfect ring of characteristic `p`, then the ring of Witt vectors `𝕎 k` is
`p`-torsion free.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Complete/Variant6e9e03ba835c5ecd8b11c66df317011f8386f0152405de10a8dc7a930bda29d8.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `053ade2ccb9886d3986372bd5d49f38607684563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
