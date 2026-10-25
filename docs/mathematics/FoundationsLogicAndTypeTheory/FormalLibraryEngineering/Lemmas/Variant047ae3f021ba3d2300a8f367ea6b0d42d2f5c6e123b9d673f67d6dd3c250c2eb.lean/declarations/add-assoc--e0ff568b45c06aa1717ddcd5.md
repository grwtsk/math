# add_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c91c3b4-a259-9403-c029-cd81e20a7ea8",
  "kind": "theorem",
  "lexical_name": "add_assoc",
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
  "slug": "add-assoc--e0ff568b45c06aa1717ddcd5",
  "source": {
    "blob": "cacf6df61c305b006f4ff5fa954a6341a8d8c345",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 223,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0ff568b45c06aa1717ddcd5d6fd421caefc44a931b9ab75a7ab5965fe39cc29",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c91c3b4-a259-9403-c029-cd81e20a7ea8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem add_assoc : ∀ a b c : Int, a + b + c = a + (b + c)
  | (m:Nat), (n:Nat), _ => aux1 ..
  | Nat.cast m, b, Nat.cast k => by
    rw [Int.add_comm, ← aux1, Int.add_comm k, aux1, Int.add_comm b]
  | a, (n:Nat), (k:Nat) => by
    rw [Int.add_comm, Int.add_comm a, ← aux1, Int.add_comm a, Int.add_comm k]
  | -[_+1], -[_+1], (k:Nat) => aux2 ..
  | -[m+1], (n:Nat), -[k+1] => by
    rw [Int.add_comm, ← aux2, Int.add_comm n, ← aux2, Int.add_comm -[m+1]]
  | (m:Nat), -[n+1], -[k+1] => by
    rw [Int.add_comm, Int.add_comm m, Int.add_comm m, ← aux2, Int.add_comm -[k+1]]
  | -[m+1], -[n+1], -[k+1] => by
    simp [Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
where
  aux1 (m n : Nat) : ∀ c : Int, m + n + c = m + (n + c)
    | (k:Nat) => by simp [Nat.add_assoc, -natCast_add]
    | -[k+1]  => by simp [subNatNat_add, -natCast_add]
  aux2 (m n k : Nat) : -[m+1] + -[n+1] + k = -[m+1] + (-[n+1] + k) := by
    simp
    rw [Int.add_comm, subNatNat_add_negSucc]
    simp [Nat.add_comm, Nat.add_left_comm, Nat.add_assoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant047ae3f021ba3d2300a8f367ea6b0d42d2f5c6e123b9d673f67d6dd3c250c2eb.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cacf6df61c305b006f4ff5fa954a6341a8d8c345` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
