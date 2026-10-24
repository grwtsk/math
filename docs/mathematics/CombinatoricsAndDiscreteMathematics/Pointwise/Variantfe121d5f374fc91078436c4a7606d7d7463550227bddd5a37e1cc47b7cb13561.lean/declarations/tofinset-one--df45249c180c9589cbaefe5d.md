# toFinset_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d735876c87a392ebfcabed10dec71053a16ad1ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2c7716d-5de0-ba76-2ab2-5361cddd587f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb0b1a07-0e35-02a0-851b-764527e18b51",
  "kind": "theorem",
  "lexical_name": "toFinset_one",
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
  "slug": "tofinset-one--df45249c180c9589cbaefe5d",
  "source": {
    "blob": "d735876c87a392ebfcabed10dec71053a16ad1ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2219,
    "line": 2213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df45249c180c9589cbaefe5d494f6c943febb0d8ddec87772bb74e17e37e68fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb0b1a07-0e35-02a0-851b-764527e18b51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2213–2219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFinset_one : (1 : Set α).toFinset = 1 :=
  rfl
#align set.to_finset_one Set.toFinset_one
#align set.to_finset_zero Set.toFinset_zero

-- Porting note: should take priority over `Finite.toFinset_singleton`
@[to_additive (attr := simp high)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pointwise/Variantfe121d5f374fc91078436c4a7606d7d7463550227bddd5a37e1cc47b7cb13561.lean#L2213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d735876c87a392ebfcabed10dec71053a16ad1ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
