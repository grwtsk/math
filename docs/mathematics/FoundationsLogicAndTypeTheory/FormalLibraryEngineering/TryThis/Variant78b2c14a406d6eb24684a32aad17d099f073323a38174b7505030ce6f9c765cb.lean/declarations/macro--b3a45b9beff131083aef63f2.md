# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:632094dd8def21be3b0e8d00fc98f9736749070a4a417178ed8cdc37cd1b88ee",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro--b3a45b9beff131083aef63f2",
  "source": {
    "blob": "971a17be7da52b2e595f1ee7c86a6a19892bfdb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 289,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant78b2c14a406d6eb24684a32aad17d099f073323a38174b7505030ce6f9c765cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3a45b9beff131083aef63f2cf92fd57268d0a981462f1715bd28a901462dc50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant78b2c14a406d6eb24684a32aad17d099f073323a38174b7505030ce6f9c765cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:632094dd8def21be3b0e8d00fc98f9736749070a4a417178ed8cdc37cd1b88ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro "#demo" s:term "with_code_action_prefix" h:str : command => `(example : True := by
  add_suggestions $s with_code_action_prefix $h; trivial)

/- The messages and suggestions should still read `Try these: ...`, but the text in the lightbulb
menu should read "Maybe use: rfl"; "Maybe use: rfl"; "Also consider rfl, please!" -/
/--
info: Try these:
  [apply] rfl
  [apply] rfl
  [apply] rfl
-/
#guard_msgs in
#demo #[
  s,
  s,
  { s with toCodeActionTitle? := fun text => "Also consider " ++ text ++ ", please!" }
] with_code_action_prefix "Maybe use: "
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant78b2c14a406d6eb24684a32aad17d099f073323a38174b7505030ce6f9c765cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryThis/Variant78b2c14a406d6eb24684a32aad17d099f073323a38174b7505030ce6f9c765cb.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `971a17be7da52b2e595f1ee7c86a6a19892bfdb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
