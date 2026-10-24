# IsOneApplyEqSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac18d6a398352de1918595ee9313cf77239644463cdc786a533fa7bd6e4cd9d8",
  "kind": "class",
  "lexical_name": "IsOneApplyEqSelf",
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
  "slug": "isoneapplyeqself--fa74d6f64528a18c6329adb5",
  "source": {
    "blob": "e59769dcdb342ceb82cddf437e2ca3aabcfb1894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 88,
    "path": "GRWTSK/Algebra/GroupTheory/IsApply/Variant5e6e1c0e98ff98bf59c3f76c7e3ccb9cf7c5bb14d4d3e91aa269ecaac988710a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa74d6f64528a18c6329adb59273ec19ff9421c3593b221f9f06142f558c4d32",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsApply/Variant5e6e1c0e98ff98bf59c3f76c7e3ccb9cf7c5bb14d4d3e91aa269ecaac988710a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac18d6a398352de1918595ee9313cf77239644463cdc786a533fa7bd6e4cd9d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsOneApplyEqSelf (F : Type*) (α : outParam Type*) [FunLike F α α] [One F] where
  one_apply_eq_self (x : α) : (1 : F) x = x

@[simp, grind =]
alias one_apply_eq_self := IsOneApplyEqSelf.one_apply_eq_self

end Zero

section Add

/-- `IsAddApply F α β` states for all `f g : F` and `x : α`, `(f + g) x = f x + g x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsApply/Variant5e6e1c0e98ff98bf59c3f76c7e3ccb9cf7c5bb14d4d3e91aa269ecaac988710a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsApply/Variant5e6e1c0e98ff98bf59c3f76c7e3ccb9cf7c5bb14d4d3e91aa269ecaac988710a.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e59769dcdb342ceb82cddf437e2ca3aabcfb1894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
