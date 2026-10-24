# KaehlerDifferential.range_mapBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d25cf21-5c46-4a51-ba6c-049720b0e5e8",
  "kind": "lemma",
  "lexical_name": "KaehlerDifferential.range_mapBaseChange",
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
  "slug": "kaehlerdifferential-range-mapbasechange--e81b7c46494ee3fa088c0f0d",
  "source": {
    "blob": "b184a5aebc67289390eac066e3c99fe99281dbd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 759,
    "line": 734,
    "path": "GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e81b7c46494ee3fa088c0f0d0645f28a9075cf48eab47b99ad45fb4e29bdfe89",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d25cf21-5c46-4a51-ba6c-049720b0e5e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 734–759.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma KaehlerDifferential.range_mapBaseChange :
    LinearMap.range (mapBaseChange R A B) = LinearMap.ker (map R A B B) := by
  apply le_antisymm
  · rintro _ ⟨x, rfl⟩
    induction x with
    | tmul r s =>
      obtain ⟨x, rfl⟩ := linearCombination_surjective _ _ s
      simp only [mapBaseChange_tmul, LinearMap.mem_ker, map_smul]
      induction x using Finsupp.induction_linear
      · simp
      · simp [smul_add, *]
      · simp
    | add => rw [map_add]; exact add_mem ‹_› ‹_›
  · convert_to (kerTotal A B).map (Finsupp.linearCombination B (D R B)) ≤ _
    · rw [KaehlerDifferential.ker_map]
      congr 1
      convert! Submodule.comap_id _
      · ext; simp
    rw [Submodule.map_le_iff_le_comap, kerTotal, Submodule.span_le]
    rintro f ((⟨⟨x, y⟩, rfl⟩ | ⟨⟨x, y⟩, rfl⟩) | ⟨x, rfl⟩)
    · use 0; simp
    · use 0; simp
    · use 1 ⊗ₜ D _ _ x; simp

/-- The sequence `B ⊗[A] Ω[A⁄R] → Ω[B⁄R] → Ω[B⁄A] → 0` is exact.
Also see `KaehlerDifferential.map_surjective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean#L734).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b184a5aebc67289390eac066e3c99fe99281dbd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
