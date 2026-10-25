# cooper_resolution_dvd_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7ec6767-4d8a-9646-5be1-510523149246",
  "kind": "theorem",
  "lexical_name": "cooper_resolution_dvd_left",
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
  "slug": "cooper-resolution-dvd-left--1cb6bf7cdc90cb23bcb3b1dc",
  "source": {
    "blob": "c4e7389993380fb217d9d5c2936b86c8ea6f7d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 189,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cb6bf7cdc90cb23bcb3b1dc5bd849465f90acec526d0eb3708f7959f38fd58d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7ec6767-4d8a-9646-5be1-510523149246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cooper_resolution_dvd_left
    {a b c d s p q : Int} (a_pos : 0 < a) (b_pos : 0 < b) (d_pos : 0 < d) :
    (∃ x, p ≤ a * x ∧ b * x ≤ q ∧ d ∣ c * x + s) ↔
    (∃ k : Int, 0 ≤ k ∧ k < lcm a (a * d / gcd (a * d) c) ∧
      b * k + b * p ≤ a * q ∧
      a ∣ k + p ∧
      a * d ∣ c * k + c * p + a * s) := by
  constructor
  · rintro ⟨x, h₁, h₂, h₃⟩
    exact ⟨resolve_left a c d p x,
      le_zero_resolve_left a c d p x h₁,
      resolve_left_lt_lcm a c d p x a_pos d_pos h₁,
      resolve_left_ineq a c d p x a_pos b_pos h₁ h₂,
      resolve_left_dvd₁ a c d p x h₁,
      resolve_left_dvd₂ a c d p x h₁ h₃⟩
  · rintro ⟨k, h₁, h₂, h₃, h₄, h₅⟩
    exact ⟨resolve_left_inv a p k,
      le_mul_resolve_left_inv a p k h₁ h₄,
      mul_resolve_left_inv_le a p k a_pos h₃ h₄,
      resolve_left_inv_dvd a c d p k a_pos h₄ h₅⟩

/--
Right Cooper resolution of an upper and lower bound with divisibility constraint.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e7389993380fb217d9d5c2936b86c8ea6f7d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
