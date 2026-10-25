# castLE_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a9065a695943d547d44b2ece5cba2e96a14b921",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 430,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ce04810-5931-623e-6e8e-9886f896860e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2b24b49-6628-879a-82f9-f8446a4301fe",
  "kind": "lemma",
  "lexical_name": "castLE_natCast",
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
  "slug": "castle-natcast--76cf1a24c3a33d5fc173ac30",
  "source": {
    "blob": "6a9065a695943d547d44b2ece5cba2e96a14b921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 430,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76cf1a24c3a33d5fc173ac3039d72866f3ebf841c4717269273cace988675846",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2b24b49-6628-879a-82f9-f8446a4301fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma castLE_natCast {m n : ℕ} [NeZero m] (h : m ≤ n) (a : ℕ) :
    haveI : NeZero n := ⟨Nat.pos_iff_ne_zero.mp (Nat.lt_of_lt_of_le m.pos_of_neZero h)⟩
    Fin.castLE h (a.cast : Fin m) = (a % m : ℕ) := by
  ext
  simp only [val_castLE, val_natCast]
  rw [Nat.mod_eq_of_lt (a := a % m) (Nat.lt_of_lt_of_le (Nat.mod_lt _ m.pos_of_neZero) h)]

end OfNatCoe

end Add

section DivMod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9fe5a258560080295fb923c9471123c56cb14b87ce55c362b1124c76f775167f.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9065a695943d547d44b2ece5cba2e96a14b921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
