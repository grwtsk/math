# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0648170ec0ed4ad40f833f057aafbd8a3c04cadacac2fa363af138670af0cf80",
  "kind": "example",
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
  "slug": "example--66ae2a787daef35cd17d0486",
  "source": {
    "blob": "e35e6fb66447eea3d287f146939d66489a288127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConvEquals/Variant29e0df781aebc47609e029fe0dc5723eab591503a87bee5975184edd7c754a5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66ae2a787daef35cd17d04867e12a9ec6f7698be67964fd2f540a4c05082ebf5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConvEquals/Variant29e0df781aebc47609e029fe0dc5723eab591503a87bee5975184edd7c754a5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0648170ec0ed4ad40f833f057aafbd8a3c04cadacac2fa363af138670af0cf80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (P : (Nat → Nat) → Prop) : P (fun n => n - n) := by
  conv in (_ - _) => equals 0 =>
    -- current goal: ⊢ n - n = 0
    guard_target =ₛ n - n = 0
    apply Nat.sub_self
  guard_target =ₛ P (fun n => 0)
  -- current goal: P (fun n => 0)
  sorry

-- This tests that the goal created by equals must be closed

-- Using #guard_msgs below triggers this linter
set_option linter.unreachableTactic false

/--
error: unsolved goals
P : (Nat → Nat) → Prop
n : Nat
⊢ n - n = 0
---
error: no goals to be solved
-/
#guard_msgs in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConvEquals/Variant29e0df781aebc47609e029fe0dc5723eab591503a87bee5975184edd7c754a5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConvEquals/Variant29e0df781aebc47609e029fe0dc5723eab591503a87bee5975184edd7c754a5f.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e35e6fb66447eea3d287f146939d66489a288127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
