# add_right_cancel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50c0179204317c70bdd383986a3bc24cad5f5b23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4caf9fc9-21e2-4259-764e-cf437a416fd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ff9cf1e-774e-8ec0-fbe1-76c0928f9d6e",
  "kind": "theorem",
  "lexical_name": "add_right_cancel",
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
  "slug": "add-right-cancel--903b62948d4d03f6ab266e83",
  "source": {
    "blob": "50c0179204317c70bdd383986a3bc24cad5f5b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:903b62948d4d03f6ab266e83719243c2eeb158794b09dbd55e6ca466dc60d966",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ff9cf1e-774e-8ec0-fbe1-76c0928f9d6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem add_right_cancel (h₁ : c ≡ d [ZMOD n]) (h₂ : a + c ≡ b + d [ZMOD n]) :
    a ≡ b [ZMOD n] := by
  rw [add_comm a, add_comm b] at h₂
  exact h₁.add_left_cancel h₂
#align int.modeq.add_right_cancel Int.ModEq.add_right_cancel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ModEq/Variant68a52f0b9dd5a066bccbf9db52ecdbd2daa0b3ef78e63e451f4a1e8899189d63.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50c0179204317c70bdd383986a3bc24cad5f5b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
