# Mon.mul_denote

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:537a5f06-49e1-dce1-21e0-34d7a3b01b90",
  "kind": "theorem",
  "lexical_name": "Mon.mul_denote",
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
  "slug": "mon-mul-denote--19050297fc00416ee4ae9a16",
  "source": {
    "blob": "706a16bccf9cf885f3aecdf20f96d46284bc4169",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19050297fc00416ee4ae9a16d1503d5cfa77fa37c45e62fd3f3268113589e1b3",
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

Occurrence: `result:537a5f06-49e1-dce1-21e0-34d7a3b01b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Mon.mul_denote (ctx : Context) (m₁ m₂ : Mon) : (m₁.mul m₂).denote ctx = m₁.denote ctx * m₂.denote ctx :=
  go hugeFuel m₁ m₂
where
  go (fuel : Nat) (m₁ m₂ : Mon) : (Mon.mul.go fuel m₁ m₂).denote ctx = m₁.denote ctx * m₂.denote ctx := by
    induction fuel generalizing m₁ m₂ with
    | zero => simp! [append_denote]
    | succ _ ih =>
      simp!
      split <;> simp!
      next v₁ m₁ v₂ m₂ =>
        by_cases hlt : Nat.blt v₁ v₂ <;> simp! [hlt, Nat.mul_assoc, ih]
        by_cases hgt : Nat.blt v₂ v₁ <;> simp! [hgt, Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm, ih]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SOM/Variant8fdbe68bd6d0f400a0ac9d1334f49abd51d21da1265d127c034b99d40df706f4.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `706a16bccf9cf885f3aecdf20f96d46284bc4169` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
