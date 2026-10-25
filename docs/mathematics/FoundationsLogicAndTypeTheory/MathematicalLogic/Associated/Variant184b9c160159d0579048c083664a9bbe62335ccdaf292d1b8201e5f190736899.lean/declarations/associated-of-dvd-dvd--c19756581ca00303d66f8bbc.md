# associated_of_dvd_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b684a4b-227a-b9da-6801-295891197ab6",
  "kind": "theorem",
  "lexical_name": "associated_of_dvd_dvd",
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
  "slug": "associated-of-dvd-dvd--c19756581ca00303d66f8bbc",
  "source": {
    "blob": "e2949c48a2fe8cc0edbe4b98abcd771248425e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variant184b9c160159d0579048c083664a9bbe62335ccdaf292d1b8201e5f190736899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c19756581ca00303d66f8bbc5ea864c366e78b694c0263e283778ae49f5d4afc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variant184b9c160159d0579048c083664a9bbe62335ccdaf292d1b8201e5f190736899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b684a4b-227a-b9da-6801-295891197ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_of_dvd_dvd [MonoidWithZero M] [IsLeftCancelMulZero M] {a b : M}
    (hab : a ∣ b) (hba : b ∣ a) : a ~ᵤ b := by
  rcases hab with ⟨c, rfl⟩
  rcases hba with ⟨d, a_eq⟩
  by_cases ha0 : a = 0
  · simp_all
  have hac0 : a * c ≠ 0 := by
    intro con
    rw [con, zero_mul] at a_eq
    apply ha0 a_eq
  have : a * (c * d) = a * 1 := by rw [← mul_assoc, ← a_eq, mul_one]
  have hcd : c * d = 1 := mul_left_cancel₀ ha0 this
  have : a * c * (d * c) = a * c * 1 := by rw [← mul_assoc, ← a_eq, mul_one]
  have hdc : d * c = 1 := mul_left_cancel₀ hac0 this
  exact ⟨⟨c, d, hcd, hdc⟩, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variant184b9c160159d0579048c083664a9bbe62335ccdaf292d1b8201e5f190736899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Variant184b9c160159d0579048c083664a9bbe62335ccdaf292d1b8201e5f190736899.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2949c48a2fe8cc0edbe4b98abcd771248425e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
