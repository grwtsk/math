# Countable.sUnion_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "018daef5087ab7e3ddc1eb0f9bb47e8ab5c45894",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb24a8fd-de5c-c85c-936e-ec9c8fe1419c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28b43fdc-24b3-42b1-1031-28aebaa8879a",
  "kind": "theorem",
  "lexical_name": "Countable.sUnion_iff",
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
  "slug": "countable-sunion-iff--d518cd2381479d6e9869afd9",
  "source": {
    "blob": "018daef5087ab7e3ddc1eb0f9bb47e8ab5c45894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d518cd2381479d6e9869afd9444de31fc021e62266aa06b159d194bbab8ff1fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28b43fdc-24b3-42b1-1031-28aebaa8879a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Countable.sUnion_iff {s : Set (Set α)} (hs : s.Countable) :
    (⋃₀ s).Countable ↔ ∀ a ∈ s, (a : _).Countable := by rw [sUnion_eq_biUnion, hs.biUnion_iff]
#align set.countable.sUnion_iff Set.Countable.sUnion_iff

alias ⟨_, Countable.biUnion⟩ := Countable.biUnion_iff
#align set.countable.bUnion Set.Countable.biUnion

alias ⟨_, Countable.sUnion⟩ := Countable.sUnion_iff
#align set.countable.sUnion Set.Countable.sUnion

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant6af931ad5dc836bcac7b7df94f690cda73c23f4056e57f0c0001aa29935870f8.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `018daef5087ab7e3ddc1eb0f9bb47e8ab5c45894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
