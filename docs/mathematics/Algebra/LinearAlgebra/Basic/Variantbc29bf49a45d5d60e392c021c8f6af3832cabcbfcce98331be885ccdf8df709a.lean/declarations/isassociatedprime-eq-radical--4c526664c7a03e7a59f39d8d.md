# IsAssociatedPrime.eq_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1efa61df-8a30-c411-2098-088e18a9b39e",
  "kind": "theorem",
  "lexical_name": "IsAssociatedPrime.eq_radical",
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
  "slug": "isassociatedprime-eq-radical--4c526664c7a03e7a59f39d8d",
  "source": {
    "blob": "7bdf7a22ef78a3f6d67f2d50b8e0a760eead91b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 273,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c526664c7a03e7a59f39d8d4f4c734ae784bed1e43a4da83eeba0f2caac9c14",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1efa61df-8a30-c411-2098-088e18a9b39e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAssociatedPrime.eq_radical (hI : I.IsPrimary) (h : IsAssociatedPrime J (R ⧸ I)) :
    J = I.radical := by
  obtain ⟨hJ, x, e⟩ := h
  have : x ≠ 0 := by
    rintro rfl
    apply hJ.1
    rwa [colon_singleton_zero, Ideal.radical_top] at e
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mkₐ_surjective R _ x
  have h {y} : y ∈ colon ⊥ {(Ideal.Quotient.mk I) x} ↔ Ideal.Quotient.mk I (y * x) = 0 := by
    rw [mem_colon_singleton, Algebra.smul_def, Ideal.Quotient.algebraMap_eq, ← map_mul, mem_bot]
  simp only [e, Ideal.Quotient.mkₐ_eq_mk, ne_eq, Ideal.Quotient.eq_zero_iff_mem] at this h ⊢
  refine le_antisymm (Ideal.radical_le_radical_iff.mpr fun y hy ↦ ?_)
    (Ideal.radical_mono fun y ↦ h.mpr ∘ I.mul_mem_right x)
  rw [← I.colon_univ, ← Set.top_eq_univ]
  exact (hI.mem_or_mem (h.mp hy)).resolve_left this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantbc29bf49a45d5d60e392c021c8f6af3832cabcbfcce98331be885ccdf8df709a.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bdf7a22ef78a3f6d67f2d50b8e0a760eead91b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
