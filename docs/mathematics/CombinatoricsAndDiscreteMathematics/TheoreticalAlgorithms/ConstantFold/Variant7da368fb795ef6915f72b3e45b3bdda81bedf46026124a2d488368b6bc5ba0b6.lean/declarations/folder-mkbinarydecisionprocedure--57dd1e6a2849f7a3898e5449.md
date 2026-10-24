# Folder.mkBinaryDecisionProcedure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80ae663119f157b167f35b9defe2422364a289efb62ef72064ff373e748c8cd0",
  "kind": "def",
  "lexical_name": "Folder.mkBinaryDecisionProcedure",
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
  "slug": "folder-mkbinarydecisionprocedure--57dd1e6a2849f7a3898e5449",
  "source": {
    "blob": "2e48b3f5ebb181f832035e7ec03ab80e8e687eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 236,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57dd1e6a2849f7a3898e5449be01518ea9c40dde4b21a1f81b34ed6b3a67e856",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80ae663119f157b167f35b9defe2422364a289efb62ef72064ff373e748c8cd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Folder.mkBinaryDecisionProcedure [Literal α] [Literal β] {r : α → β → Prop} (folder : (a : α) → (b : β) → Decidable (r a b)) : Folder := fun args => do
  let #[.fvar fvarId₁, .fvar fvarId₂] := args | return none
  let some arg₁ ← getLit fvarId₁ | return none
  let some arg₂ ← getLit fvarId₂ | return none
  let result := folder arg₁ arg₂ |>.decide
  if (← getPhase) < .mono then
    if result then
      return some <| .const ``Decidable.isTrue [] #[.erased, .erased]
    else
      return some <| .const ``Decidable.isFalse [] #[.erased, .erased]
  else
    mkLit result

/-
We handle `USize` separately as the interpretation of `USize` literals is in general platform dependent
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variant7da368fb795ef6915f72b3e45b3bdda81bedf46026124a2d488368b6bc5ba0b6.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e48b3f5ebb181f832035e7ec03ab80e8e687eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
