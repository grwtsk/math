# erase_mem_lifts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a593146d-22c8-818a-0e2d-ea647d645137",
  "kind": "theorem",
  "lexical_name": "erase_mem_lifts",
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
  "slug": "erase-mem-lifts--aea90e50e26d999b1b0b0e0e",
  "source": {
    "blob": "3eecab8543616bd997e1491786c5adb6bdcc6c65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 136,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aea90e50e26d999b1b0b0e0ebb2627d24b2cd8bfe2bee8db229bcd57c388e676",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a593146d-22c8-818a-0e2d-ea647d645137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erase_mem_lifts {p : S[X]} (n : ℕ) (h : p ∈ lifts f) : p.erase n ∈ lifts f := by
  rw [lifts_iff_ringHom_rangeS, mem_map_rangeS] at h ⊢
  intro k
  by_cases hk : k = n
  · use 0
    simp only [hk, RingHom.map_zero, erase_same]
  obtain ⟨i, hi⟩ := h k
  use i
  simp only [hi, hk, erase_ne, Ne.def, not_false_iff]
#align polynomial.erase_mem_lifts Polynomial.erase_mem_lifts

section LiftDeg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant0e3b2c2a7a5e400bf122ede53f3fa74c5278f5a636bdede0c524cf125aee6593.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eecab8543616bd997e1491786c5adb6bdcc6c65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
