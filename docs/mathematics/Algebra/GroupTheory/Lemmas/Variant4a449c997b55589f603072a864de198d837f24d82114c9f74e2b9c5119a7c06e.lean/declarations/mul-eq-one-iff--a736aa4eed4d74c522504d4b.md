# mul_eq_one_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9584337874155f8b0b3d61930a857873f57f9622",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b59af559-1724-fb61-fb77-0741e7c16e74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fafc434-349e-4fb0-c4aa-77b7597cd715",
  "kind": "theorem",
  "lexical_name": "mul_eq_one_iff'",
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
  "slug": "mul-eq-one-iff--a736aa4eed4d74c522504d4b",
  "source": {
    "blob": "9584337874155f8b0b3d61930a857873f57f9622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1134,
    "line": 1118,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a736aa4eed4d74c522504d4b28962dfb5f728367f1169e2cb3484f9976f2a711",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fafc434-349e-4fb0-c4aa-77b7597cd715`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1118–1134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_one_iff' [CovariantClass α α (· * ·) (· ≤ ·)]
    [CovariantClass α α (swap (· * ·)) (· ≤ ·)] {a b : α} (ha : 1 ≤ a) (hb : 1 ≤ b) :
    a * b = 1 ↔ a = 1 ∧ b = 1 :=
  Iff.intro
    (fun hab : a * b = 1 =>
      have : a ≤ 1 := hab ▸ le_mul_of_le_of_one_le le_rfl hb
      have : a = 1 := le_antisymm this ha
      have : b ≤ 1 := hab ▸ le_mul_of_one_le_of_le ha le_rfl
      have : b = 1 := le_antisymm this hb
      And.intro ‹a = 1› ‹b = 1›)
    (by rintro ⟨rfl, rfl⟩; rw [mul_one])
    -- porting note: original proof of the second implication,
    -- `fun ⟨ha', hb'⟩ => by rw [ha', hb', mul_one]`,
    -- had its `to_additive`-ization fail due to some bug
#align mul_eq_one_iff' mul_eq_one_iff'
#align add_eq_zero_iff' add_eq_zero_iff'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant4a449c997b55589f603072a864de198d837f24d82114c9f74e2b9c5119a7c06e.lean#L1118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9584337874155f8b0b3d61930a857873f57f9622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
