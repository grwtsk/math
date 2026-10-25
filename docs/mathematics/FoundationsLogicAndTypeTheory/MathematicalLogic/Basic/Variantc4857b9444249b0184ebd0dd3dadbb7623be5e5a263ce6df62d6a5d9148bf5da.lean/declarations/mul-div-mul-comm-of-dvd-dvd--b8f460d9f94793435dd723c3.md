# mul_div_mul_comm_of_dvd_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3373a242-f799-51e7-369d-28862869e839",
  "kind": "theorem",
  "lexical_name": "mul_div_mul_comm_of_dvd_dvd",
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
  "slug": "mul-div-mul-comm-of-dvd-dvd--b8f460d9f94793435dd723c3",
  "source": {
    "blob": "b3d5f8c44cd0696a289d44d9b11a03203a6be941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8f460d9f94793435dd723c3cedc8ac94840b1f6c3ee663703a6073e35d0e29c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3373a242-f799-51e7-369d-28862869e839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_div_mul_comm_of_dvd_dvd (hmk : k ∣ m) (hnl : l ∣ n) :
    m * n / (k * l) = m / k * (n / l) := by
  rcases k.eq_zero_or_pos with (rfl | hk0); · simp
  rcases l.eq_zero_or_pos with (rfl | hl0); · simp
  obtain ⟨_, rfl⟩ := hmk
  obtain ⟨_, rfl⟩ := hnl
  rw [mul_mul_mul_comm, Nat.mul_div_cancel_left _ hk0, Nat.mul_div_cancel_left _ hl0,
    Nat.mul_div_cancel_left _ (mul_pos hk0 hl0)]
#align nat.mul_div_mul_comm_of_dvd_dvd Nat.mul_div_mul_comm_of_dvd_dvd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc4857b9444249b0184ebd0dd3dadbb7623be5e5a263ce6df62d6a5d9148bf5da.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3d5f8c44cd0696a289d44d9b11a03203a6be941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
