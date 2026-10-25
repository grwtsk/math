# WalkingCospan_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77f2d7092abbb68c621b2b4a57fe0737cf31f70b7fb6fbca09af9864b2e8fac9",
  "kind": "def",
  "lexical_name": "WalkingCospan_elim",
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
  "slug": "walkingcospan-elim--22cbcb36ccde8a4579cf3a8b",
  "source": {
    "blob": "bac17eb04b746d2eeb455de4e776eade7e74a75f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc8f23c2ed40001b999f719e7ce9f84b78c8769b7e97d40558bc0abd363e3ddd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22cbcb36ccde8a4579cf3a8b19e869a9975bfdac45d9ac756c9d4501034d418e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc8f23c2ed40001b999f719e7ce9f84b78c8769b7e97d40558bc0abd363e3ddd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77f2d7092abbb68c621b2b4a57fe0737cf31f70b7fb6fbca09af9864b2e8fac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WalkingCospan_elim : WalkingCospan → Sum Empty Empty := id

/--
info: Try this:

  [apply]     unfold WalkingCospan at h
    unfold WidePullbackShape at h
    cases h with
    | inl val =>
      have fwd : False := Aesop.BuiltinRules.empty_false val
      simp_all only
    | inr val_1 =>
      have fwd : False := Aesop.BuiltinRules.empty_false val_1
      simp_all only
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc8f23c2ed40001b999f719e7ce9f84b78c8769b7e97d40558bc0abd363e3ddd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantc8f23c2ed40001b999f719e7ce9f84b78c8769b7e97d40558bc0abd363e3ddd4.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bac17eb04b746d2eeb455de4e776eade7e74a75f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
