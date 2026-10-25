# Poly.add_denote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a3ec182-a984-7d12-894e-b2971db5369b",
  "kind": "theorem",
  "lexical_name": "Poly.add_denote",
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
  "slug": "poly-add-denote--105f15a2b6a3281492b20c2d",
  "source": {
    "blob": "706a16bccf9cf885f3aecdf20f96d46284bc4169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 145,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:105f15a2b6a3281492b20c2d070cbdb6f7e877f44be5657c60122a0e32e48f40",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a3ec182-a984-7d12-894e-b2971db5369b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.add_denote (ctx : Context) (p₁ p₂ : Poly) : (p₁.add p₂).denote ctx = p₁.denote ctx + p₂.denote ctx :=
  go hugeFuel p₁ p₂
where
  go (fuel : Nat) (p₁ p₂ : Poly) : (Poly.add.go fuel p₁ p₂).denote ctx = p₁.denote ctx + p₂.denote ctx := by
    induction fuel generalizing p₁ p₂ with
    | zero => simp! [append_denote]
    | succ _ ih =>
      simp!
      split <;> simp!
      next k₁ m₁ p₁ k₂ m₂ p₂ =>
        by_cases hlt : m₁ < m₂ <;> simp! [hlt, Nat.add_assoc, ih]
        by_cases hgt : m₂ < m₁ <;> simp! [hgt, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm, ih]
        have : m₁ = m₂ := List.le_antisymm hgt hlt
        subst m₂
        by_cases heq : k₁ + k₂ == 0 <;> simp! [heq, ih]
        · simp [← Nat.add_assoc, ← Nat.right_distrib, eq_of_beq heq]
        · simp [Nat.right_distrib, Nat.add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `706a16bccf9cf885f3aecdf20f96d46284bc4169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
