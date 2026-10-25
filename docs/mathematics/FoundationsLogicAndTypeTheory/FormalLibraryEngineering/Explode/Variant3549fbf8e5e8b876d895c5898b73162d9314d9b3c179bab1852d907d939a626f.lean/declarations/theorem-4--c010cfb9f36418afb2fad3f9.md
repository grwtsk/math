# theorem_4

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92140c64-2ff0-92fa-160a-75ca1f20e6eb",
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
  "slug": "theorem-4--c010cfb9f36418afb2fad3f9",
  "source": {
    "blob": "2cc0bd735d0d1e0c7311e8f4f5b4eb76723525a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant3549fbf8e5e8b876d895c5898b73162d9314d9b3c179bab1852d907d939a626f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c010cfb9f36418afb2fad3f969609c1d985b47fb2959ea0cd4fcd6f65659de30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant3549fbf8e5e8b876d895c5898b73162d9314d9b3c179bab1852d907d939a626f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92140c64-2ff0-92fa-160a-75ca1f20e6eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–127.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant3549fbf8e5e8b876d895c5898b73162d9314d9b3c179bab1852d907d939a626f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant3549fbf8e5e8b876d895c5898b73162d9314d9b3c179bab1852d907d939a626f.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc0bd735d0d1e0c7311e8f4f5b4eb76723525a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
