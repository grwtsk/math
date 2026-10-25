# AM_GM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40f9452d-612e-0f41-1ba2-d8b44b773c3d",
  "kind": "lemma",
  "lexical_name": "AM_GM",
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
  "slug": "am-gm--f635f2b68ac50a6b65cde2ed",
  "source": {
    "blob": "7deca7db4131e493377a04ed2a9eb345b8a17aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f635f2b68ac50a6b65cde2edad818460e321b9b0e42bdb7b2bdae1b9502d5bc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40f9452d-612e-0f41-1ba2-d8b44b773c3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma AM_GM : {a b : ℕ} → (4 * a * b ≤ (a + b) * (a + b))
  | 0, _ => by rw [mul_zero, zero_mul]; exact zero_le _
  | _, 0 => by rw [mul_zero]; exact zero_le _
  | a + 1, b + 1 => by
    have ih := add_le_add_right (@AM_GM a b) 4
    simp only [mul_add, add_mul, show (4 : ℕ) = 1 + 1 + 1 + 1 from rfl, one_mul, mul_one] at ih ⊢
    simp only [add_assoc, add_left_comm, add_le_add_iff_left] at ih ⊢
    exact ih

end Misc

section Std

-- porting note: These two lemmas seem like they belong to `Std.Data.Nat.Basic`.

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ForSqrt/Variant3d565bf70cb3a1300d7a49ff47b74694a4eb8a2049d9fb83b3bc3417516cad5f.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7deca7db4131e493377a04ed2a9eb345b8a17aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
