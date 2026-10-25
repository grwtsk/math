# theorem_4

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
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af084116-30f2-b60e-44d3-6f2aa3ce2329",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d66bab2-ce38-5d75-da24-6a0301a4458a",
  "kind": "theorem",
  "lexical_name": "theorem_4",
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
  "slug": "theorem-4--ff142e7ae60cfe15177f47ca",
  "source": {
    "blob": "9c0d917841c2db6d7a2345900fd6b538cec7f2bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff142e7ae60cfe15177f47ca897a062c1c3d6a264efc9485607719b8721bf249",
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

Occurrence: `result:4d66bab2-ce38-5d75-da24-6a0301a4458a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theorem_4 : ∀ p q : Prop, (p → q) → (¬q → ¬p) :=
  fun U ↦ fun W ↦ fun hPQ ↦ fun hNQ ↦ fun hP ↦ False.elim (hNQ (hPQ hP))

/--
info: theorem_4 : ∀ (p q : Prop), (p → q) → ¬q → ¬p

0│           │ U          ├ Prop
1│           │ W          ├ Prop
2│           │ hPQ        ├ U → W
3│           │ hNQ        ├ ¬W
4│           │ hP         ├ U
5│2,4        │ ∀E         │ W
6│3,5        │ ∀E         │ False
7│6          │ False.elim │ False
8│0,1,2,3,4,7│ ∀I         │ ∀ (U W : Prop), (U → W) → ¬W → U → False
-/
#guard_msgs in #explode theorem_4

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variantda3505dd4f19d73dae35e6420e54fd31f510ae26d7890e1fba506892b4f56131.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0d917841c2db6d7a2345900fd6b538cec7f2bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
