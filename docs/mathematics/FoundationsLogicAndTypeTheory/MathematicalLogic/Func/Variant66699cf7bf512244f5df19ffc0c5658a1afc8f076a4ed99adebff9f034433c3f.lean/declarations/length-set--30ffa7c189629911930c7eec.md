# length_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:695420ef-7eaf-a4d5-4df1-225b392cd946",
  "kind": "theorem",
  "lexical_name": "length_set",
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
  "slug": "length-set--30ffa7c189629911930c7eec",
  "source": {
    "blob": "add2c0c02601450e523f4742e87613b9b7116c2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30ffa7c189629911930c7eec0c2d3522c2ba4c3ef97ceea0336d0e054a2a9dd1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:695420ef-7eaf-a4d5-4df1-225b392cd946`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_set : ∀ {m : ℕ} {as : List α}, as {m ↦ a}.length = max as.length (m + 1)
  | 0, [] => rfl
  | 0, a :: as => by
    rw [max_eq_left]
    · rfl
    · simp [Nat.le_add_right]
      exact Nat.succ_le_succ (Nat.zero_le _)
  | m + 1, [] => by
    have := @length_set m []
    simp [set, length, @length_set m, Nat.zero_max]
  | m + 1, _ :: as => by
    simp [set, length, @length_set m, Nat.max_succ_succ]
#align list.func.length_set List.Func.length_set

-- porting note : @[simp] has been removed since `#lint` says this is
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `add2c0c02601450e523f4742e87613b9b7116c2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
