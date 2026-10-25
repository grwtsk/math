# theorem_3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c0d917841c2db6d7a2345900fd6b538cec7f2bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bd5561f-0ff1-d9a8-9d6c-e766969f40c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94646c6d-e74a-c669-84f1-1e7588ed6da2",
  "kind": "theorem",
  "lexical_name": "theorem_3",
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
  "slug": "theorem-3--a54f6627cfdd1a5b2acdecb1",
  "source": {
    "blob": "9c0d917841c2db6d7a2345900fd6b538cec7f2bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a54f6627cfdd1a5b2acdecb127742721b7c7039f4a14c1b76541fe0b32c0eac2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94646c6d-e74a-c669-84f1-1e7588ed6da2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_3 (a : Prop) (h : a) : a ↔ True :=
  Iff.intro
    (fun hl ↦ trivial)
    (fun hr ↦ h)

/--
info: theorem_3 : ∀ (a : Prop), a → (a ↔ True)

0│     │ a         ├ Prop
1│     │ h         ├ a
2│     │ hl        │ ┌ a
3│     │ trivial   │ │ True
4│2,3  │ ∀I        │ a → True
5│     │ hr        │ ┌ True
6│5,1  │ ∀I        │ True → a
7│4,6  │ Iff.intro │ a ↔ True
8│0,1,7│ ∀I        │ ∀ (a : Prop), a → (a ↔ True)
-/
#guard_msgs in #explode theorem_3


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0d917841c2db6d7a2345900fd6b538cec7f2bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
