# VCGen.mkBackwardRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2d9b2c74370718ace90b6462a6814cf7d8e8a62869677a1c9dc0790ef528652",
  "kind": "def",
  "lexical_name": "VCGen.mkBackwardRules",
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
  "slug": "vcgen-mkbackwardrules--1d787fb7c9fc0ee5bc0bb73e",
  "source": {
    "blob": "ef9078ab07e611c6c8bc699766f58bc92a322f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d787fb7c9fc0ee5bc0bb73e29eee99189475300487ea811012abcb8bd7b7042",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2d9b2c74370718ace90b6462a6814cf7d8e8a62869677a1c9dc0790ef528652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def VCGen.mkBackwardRules : MetaM VCGen.BackwardRules := do
  return {
    tripleIntro := ← mkBackwardRuleFromDecl ``Std.Internal.Do.Triple.intro
    stateArgIntro := ← mkBackwardRuleFromDecl ``Lean.Order.le_of_forall_le
    propPreIntro := ← mkBackwardRuleFromDecl ``Lean.Order.le_of_imp_top_le
    ofPropPreIntro := ← mkBackwardRuleFromDecl ``Lean.Order.ofProp_le
    truePreIntro := ← mkBackwardRuleFromDecl ``Lean.Order.true_le_of_top_le
    elimPre := ← mkBackwardRuleFromDecl ``Lean.Order.top_le_prop
    andIntro := ← mkBackwardRuleFromDecl ``And.intro
    refl := ← mkBackwardRuleFromDecl ``Lean.Order.PartialOrder.rel_refl
    meetTop := ← mkBackwardRuleFromDecl ``Std.Internal.Do.CompleteLattice.meet_top_le_of_le
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9078ab07e611c6c8bc699766f58bc92a322f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
