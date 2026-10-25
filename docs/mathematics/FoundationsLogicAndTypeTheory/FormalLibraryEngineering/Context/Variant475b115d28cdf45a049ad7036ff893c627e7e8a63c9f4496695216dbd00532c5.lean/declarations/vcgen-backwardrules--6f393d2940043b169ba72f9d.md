# VCGen.BackwardRules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:62f71ac53993712dab5c769c4383c3e57db1f70deabbc8f5e4e62de756cc6c8a",
  "kind": "structure",
  "lexical_name": "VCGen.BackwardRules",
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
  "slug": "vcgen-backwardrules--6f393d2940043b169ba72f9d",
  "source": {
    "blob": "ef9078ab07e611c6c8bc699766f58bc92a322f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f393d2940043b169ba72f9d56c80ee164bbcb7a526461120866695d30643f8a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:62f71ac53993712dab5c769c4383c3e57db1f70deabbc8f5e4e62de756cc6c8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure VCGen.BackwardRules where
  /-- The backward rule for `Triple.intro`. Unfolds `⦃P⦄ x ⦃Q; E⦄` into `P ⊑ wp x Q E`. -/
  tripleIntro : BackwardRule
  /-- The backward rule for `Lean.Order.le_of_forall_le`. Peels one excess state argument
  from a function-lattice entailment. -/
  stateArgIntro : BackwardRule
  /-- The backward rule for `Lean.Order.le_of_imp_top_le`. Introduces a bare pure
  precondition on the `Prop` lattice. -/
  propPreIntro : BackwardRule
  /-- The backward rule for `Lean.Order.ofProp_le`. Introduces an embedded pure
  precondition `⌜p⌝` on any complete lattice. -/
  ofPropPreIntro : BackwardRule
  /-- The backward rule for `Lean.Order.true_le_of_top_le`. Replaces a `True` precondition
  with `⊤` on the `Prop` lattice. -/
  truePreIntro : BackwardRule
  /-- The backward rule for `Lean.Order.top_le_prop`. Strips a `(⊤ : Prop) ⊑ ·` wrapper
  from a VC before it is emitted. -/
  elimPre : BackwardRule
  /-- The backward rule for `And.intro`. -/
  andIntro : BackwardRule
  /-- The backward rule for `Lean.Order.PartialOrder.rel_refl`. Closes a reflexive
  entailment `pre ⊑ pre`. -/
  refl : BackwardRule
  /-- The backward rule for `meet_top_le_of_le`. Cancels a redundant `⊓ ⊤` on the left of an
  entailment, turning `P ⊓ ⊤ ⊑ Q` into `P ⊑ Q`. -/
  meetTop : BackwardRule

/-- Build the backward rules used by `solve` from their underlying lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Context/Variant475b115d28cdf45a049ad7036ff893c627e7e8a63c9f4496695216dbd00532c5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef9078ab07e611c6c8bc699766f58bc92a322f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
