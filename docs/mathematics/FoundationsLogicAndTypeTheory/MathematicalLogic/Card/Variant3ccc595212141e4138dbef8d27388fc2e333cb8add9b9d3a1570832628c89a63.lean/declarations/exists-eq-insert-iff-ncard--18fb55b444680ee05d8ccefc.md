# exists_eq_insert_iff_ncard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2028a5bbeb5ef5b207a08ccc2c5c375fa215d515",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25c49585-8784-f366-f421-a9d3d6053736",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59f0c0b2-1bad-fdfa-e865-d1aebd1d34b4",
  "kind": "theorem",
  "lexical_name": "exists_eq_insert_iff_ncard",
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
  "slug": "exists-eq-insert-iff-ncard--18fb55b444680ee05d8ccefc",
  "source": {
    "blob": "2028a5bbeb5ef5b207a08ccc2c5c375fa215d515",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1270,
    "line": 1257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18fb55b444680ee05d8ccefc2d431deac267caae35fa0fcf2059c0b490fbafad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59f0c0b2-1bad-fdfa-e865-d1aebd1d34b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1257–1270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_insert_iff_ncard (hs : s.Finite := by toFinite_tac) :
    (∃ a ∉ s, insert a s = t) ↔ s ⊆ t ∧ s.ncard + 1 = t.ncard := by
  classical
  rcases t.finite_or_infinite with ht | ht
  · rw [ncard_eq_toFinset_card _ hs, ncard_eq_toFinset_card _ ht,
      ← @Finite.toFinset_subset_toFinset _ _ _ hs ht, ← Finset.exists_eq_insert_iff]
    convert! Iff.rfl using 2; simp only [Finite.mem_toFinset]
    ext x
    simp [Finset.ext_iff, Set.ext_iff]
  simp only [ht.ncard, add_eq_zero, and_false, iff_false, not_exists, not_and,
    reduceCtorEq]
  rintro x - rfl
  exact ht (hs.insert x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variant3ccc595212141e4138dbef8d27388fc2e333cb8add9b9d3a1570832628c89a63.lean#L1257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2028a5bbeb5ef5b207a08ccc2c5c375fa215d515` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
