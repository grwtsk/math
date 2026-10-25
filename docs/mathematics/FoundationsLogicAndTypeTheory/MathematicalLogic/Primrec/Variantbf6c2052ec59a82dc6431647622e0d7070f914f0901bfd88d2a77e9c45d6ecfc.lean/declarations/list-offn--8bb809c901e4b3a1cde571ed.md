# list_ofFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ede4fde06b98cf024049cc9225a5d965939d01ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf6c2052ec59a82dc6431647622e0d7070f914f0901bfd88d2a77e9c45d6ecfc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:824d07b4-dcf0-8aee-9c17-c999ba1b1a7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b67767bf-c51e-3381-e558-54b04322f6ca",
  "kind": "theorem",
  "lexical_name": "list_ofFn",
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
  "slug": "list-offn--8bb809c901e4b3a1cde571ed",
  "source": {
    "blob": "ede4fde06b98cf024049cc9225a5d965939d01ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1214,
    "line": 1209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variantbf6c2052ec59a82dc6431647622e0d7070f914f0901bfd88d2a77e9c45d6ecfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bb809c901e4b3a1cde571ed821eb708e7b0611ad5412926af3ff7d0a775f84a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variantbf6c2052ec59a82dc6431647622e0d7070f914f0901bfd88d2a77e9c45d6ecfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b67767bf-c51e-3381-e558-54b04322f6ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1209–1214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem list_ofFn :
    ∀ {n} {f : Fin n → α → σ}, (∀ i, Primrec (f i)) → Primrec fun a => List.ofFn fun i => f i a
  | 0, _, _ => by simp only [List.ofFn_zero]; exact const []
  | n + 1, f, hf => by
    simpa [List.ofFn_succ] using list_cons.comp (hf 0) (list_ofFn fun i => hf i.succ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variantbf6c2052ec59a82dc6431647622e0d7070f914f0901bfd88d2a77e9c45d6ecfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Primrec/Variantbf6c2052ec59a82dc6431647622e0d7070f914f0901bfd88d2a77e9c45d6ecfc.lean#L1209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede4fde06b98cf024049cc9225a5d965939d01ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
