# not_ite_eq_false_eq_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:395b0861-90b0-89c7-d6b7-6a370e5f97cb",
  "kind": "theorem",
  "lexical_name": "not_ite_eq_false_eq_true",
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
  "slug": "not-ite-eq-false-eq-true--4209a40cad80e2ac40dd1acb",
  "source": {
    "blob": "bf23de7b7a6539e5d927c5d765019cc14143e43c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 483,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bool/Variant51eab941757f93a2ed1175868ff8210376a2b2737e941b1fafa7918084704c84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4209a40cad80e2ac40dd1acb44f2b8b378d340fd71ac1b564fc42281d7d286cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bool/Variant51eab941757f93a2ed1175868ff8210376a2b2737e941b1fafa7918084704c84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:395b0861-90b0-89c7-d6b7-6a370e5f97cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_ite_eq_false_eq_true {p : Prop} [h : Decidable p] {b c : Bool} :
  ¬(ite p (b = false) (c = true)) ↔ (ite p (b = true) (c = false)) := by
  cases h with | _ p => simp [p]

/-
It would be nice to have this for confluence between `if_true_left` and `ite_false_same` on
`if b = true then True else b = true`.
However the discrimination tree key is just `→`, so this is tried too often.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bool/Variant51eab941757f93a2ed1175868ff8210376a2b2737e941b1fafa7918084704c84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bool/Variant51eab941757f93a2ed1175868ff8210376a2b2737e941b1fafa7918084704c84.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf23de7b7a6539e5d927c5d765019cc14143e43c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
