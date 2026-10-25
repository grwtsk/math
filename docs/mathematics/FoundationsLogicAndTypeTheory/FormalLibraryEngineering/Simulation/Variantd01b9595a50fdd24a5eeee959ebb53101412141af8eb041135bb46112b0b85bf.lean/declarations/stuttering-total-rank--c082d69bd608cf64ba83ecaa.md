# stuttering_total_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:975288b5-b0df-a373-ee91-d4be61d99d08",
  "kind": "theorem",
  "lexical_name": "stuttering_total_rank",
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
  "slug": "stuttering-total-rank--c082d69bd608cf64ba83ecaa",
  "source": {
    "blob": "aff22b7a4ba4943f743149575c51bcb567db2bd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c082d69bd608cf64ba83ecaaea9a27ed15b26bdf9fc351bc919c059b6fae5073",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:975288b5-b0df-a373-ee91-d4be61d99d08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stuttering_total_rank {R : X → X → Prop}
    (targetRank adminRank : X → ℕ) (B : ℕ)
    (classification : ∀ {x y}, R x y →
      (targetRank y < targetRank x ∧ adminRank y ≤ B) ∨
        (targetRank y = targetRank x ∧ adminRank y < adminRank x))
    {x y : X} (step : R x y) :
    adminRank y + targetRank y * (B + 1) < adminRank x + targetRank x * (B + 1) := by
  rcases classification step with ⟨targetDecrease, reset⟩ | ⟨same, adminDecrease⟩
  · have targetBound : (targetRank y + 1) * (B + 1) ≤ targetRank x * (B + 1) :=
      Nat.mul_le_mul_right (B + 1) targetDecrease
    rw [Nat.add_mul, Nat.one_mul] at targetBound
    omega
  · rw [same]
    omega

/-- The reset hypothesis certifies the requested total-step budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simulation/Variantd01b9595a50fdd24a5eeee959ebb53101412141af8eb041135bb46112b0b85bf.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aff22b7a4ba4943f743149575c51bcb567db2bd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
