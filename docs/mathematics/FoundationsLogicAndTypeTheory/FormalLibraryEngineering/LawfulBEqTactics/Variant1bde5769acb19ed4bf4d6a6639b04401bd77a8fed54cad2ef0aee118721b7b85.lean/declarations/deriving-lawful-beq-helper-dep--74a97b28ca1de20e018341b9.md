# deriving_lawful_beq_helper_dep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40b20c4afc6aeae7d9142ed2138248cd7b596f39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:69b1c0dc-b800-5dc5-2bcd-e33fe7fa04b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8006ab77-5063-9189-aeaa-0d3ca0dfce9c",
  "kind": "theorem",
  "lexical_name": "deriving_lawful_beq_helper_dep",
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
  "slug": "deriving-lawful-beq-helper-dep--74a97b28ca1de20e018341b9",
  "source": {
    "blob": "40b20c4afc6aeae7d9142ed2138248cd7b596f39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74a97b28ca1de20e018341b9ccc918571362311247ea19d1014241270aac6b4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8006ab77-5063-9189-aeaa-0d3ca0dfce9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriving_lawful_beq_helper_dep {x y : α} [BEq α] [ReflBEq α]
  {t : (x == y) = true → Bool} {P : Prop}
    (inst : (x == y) = true → x = y)
    (k : (h : x = y) → t (h ▸ ReflBEq.rfl) = true → P) :
    (if h : (x == y) then t h else false) = true → P := by
  intro h
  by_cases hxy : x = y
  · subst hxy
    apply k rfl
    rw [dif_pos (BEq.refl x)] at h
    exact h
  · by_cases hxy' : x == y
    · exact False.elim <| hxy (inst hxy')
    · rw [dif_neg hxy'] at h
      contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulBEqTactics/Variant1bde5769acb19ed4bf4d6a6639b04401bd77a8fed54cad2ef0aee118721b7b85.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40b20c4afc6aeae7d9142ed2138248cd7b596f39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
