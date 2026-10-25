# repeatM.impl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92468b316b942c3729ce7ddec356e74681b40f1d0d4960a64216513963f089b8",
  "kind": "def",
  "lexical_name": "repeatM.impl",
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
  "slug": "repeatm-impl--22942dac14acaef2f9d27774",
  "source": {
    "blob": "d6c953c39bad07eaf16f37cf8a006df58c49646d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22942dac14acaef2f9d277742afa1a364ea3d4d5a72d1317f93b01a6389024ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92468b316b942c3729ce7ddec356e74681b40f1d0d4960a64216513963f089b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def repeatM.impl [Nonempty β]
    (f : α → m (α ⊕ β)) (a : α) :
    Subtype (repeatM.Pred f a) :=
  ⟨repeatM.body f (repeatM.impl f · |>.val) a, by
    simp only [repeatM.Pred]
    split <;> rename_i h
    · have key : (fun x => (repeatM.impl f x).val) = h.choose := funext fun x => by
        simpa only [repeatM.Pred, dif_pos h] using (repeatM.impl f x).property
      rw [key]; exact congrFun h.choose_spec a
    · trivial⟩

/--
An erased version of `repeatM.impl` that eta-expands better in the compiler.
Can be removed once `repeatM.impl` optimizes to the same code.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variantb94d9b720479944a3c631f1f6f93ca84da6d827a96426eb2c17ee6827906d054.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c953c39bad07eaf16f37cf8a006df58c49646d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
