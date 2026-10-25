# smul_univ₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "599241feca37bc5bd1ca7b6cdb0c89c519f6c59f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1064,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6caaee322390f58301f958525c382d902beaab2205124d8ae364d33c5d98a81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1db75911-88c3-1133-37cf-b9f3b78fdcda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afda2eea-33b4-7b5c-57e5-1ca6bf22ac97",
  "kind": "theorem",
  "lexical_name": "smul_univ₀",
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
  "slug": "smul-univ--d0aaef37f5d157365ea7a638",
  "source": {
    "blob": "599241feca37bc5bd1ca7b6cdb0c89c519f6c59f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1068,
    "line": 1064,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf6caaee322390f58301f958525c382d902beaab2205124d8ae364d33c5d98a81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0aaef37f5d157365ea7a6384f8511e0f0aa2f3c118c96dc160985144ee0a59a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf6caaee322390f58301f958525c382d902beaab2205124d8ae364d33c5d98a81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afda2eea-33b4-7b5c-57e5-1ca6bf22ac97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1064–1068.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_univ₀ {s : Set α} (hs : ¬s ⊆ 0) : s • (univ : Set β) = univ :=
  let ⟨a, ha, ha₀⟩ := not_subset.1 hs
  eq_univ_of_forall fun b ↦ ⟨a, a⁻¹ • b, ha, trivial, smul_inv_smul₀ ha₀ _⟩
#align set.smul_univ₀ Set.smul_univ₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf6caaee322390f58301f958525c382d902beaab2205124d8ae364d33c5d98a81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variantf6caaee322390f58301f958525c382d902beaab2205124d8ae364d33c5d98a81.lean#L1064).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599241feca37bc5bd1ca7b6cdb0c89c519f6c59f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
