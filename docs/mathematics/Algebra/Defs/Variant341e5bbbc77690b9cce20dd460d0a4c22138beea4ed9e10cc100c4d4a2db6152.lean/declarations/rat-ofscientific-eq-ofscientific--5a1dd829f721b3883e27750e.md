# Rat.ofScientific_eq_ofScientific

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7cfb7246b4896ec3fc910efbfdeb50261baddeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 219,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/341e5bbbc77690b9cce20dd460d0a4c22138beea4ed9e10cc100c4d4a2db6152.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21a3f208-0579-280f-be02-2a0113bb9e78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52d59933-24da-023b-a0c9-66c71e0c58d0",
  "kind": "theorem",
  "lexical_name": "Rat.ofScientific_eq_ofScientific",
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
  "slug": "rat-ofscientific-eq-ofscientific--5a1dd829f721b3883e27750e",
  "source": {
    "blob": "c7cfb7246b4896ec3fc910efbfdeb50261baddeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 219,
    "path": "GRWTSK/Algebra/Defs/Variant341e5bbbc77690b9cce20dd460d0a4c22138beea4ed9e10cc100c4d4a2db6152.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a1dd829f721b3883e27750ea2ae01e4d56a26745b1e83eaab837f51c9964bda",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant341e5bbbc77690b9cce20dd460d0a4c22138beea4ed9e10cc100c4d4a2db6152.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52d59933-24da-023b-a0c9-66c71e0c58d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Rat.ofScientific_eq_ofScientific (m : ℕ) (s : Bool) (e : ℕ) :
    Rat.ofScientific (OfNat.ofNat m) s (OfNat.ofNat e) = OfScientific.ofScientific m s e := rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant341e5bbbc77690b9cce20dd460d0a4c22138beea4ed9e10cc100c4d4a2db6152.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant341e5bbbc77690b9cce20dd460d0a4c22138beea4ed9e10cc100c4d4a2db6152.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7cfb7246b4896ec3fc910efbfdeb50261baddeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
