# IsLocalSourceTargetProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1cd2e7eba16e9b3bf1a78831cc5b95db74af96d91c20e8a4c994053ce5ec949",
  "kind": "structure",
  "lexical_name": "IsLocalSourceTargetProperty",
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
  "slug": "islocalsourcetargetproperty--3e0ef8c7a941485b6aef3580",
  "source": {
    "blob": "72df890c93d70eb2965f0bd7ec30aded4a9b5cfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e0ef8c7a941485b6aef3580951ceb41876f2ad8383c1dd514cf8e81828034c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1cd2e7eba16e9b3bf1a78831cc5b95db74af96d91c20e8a4c994053ce5ec949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsLocalSourceTargetProperty
    (P : (M → N) → OpenPartialHomeomorph M H → OpenPartialHomeomorph N G → Prop) : Prop where
  mono_source : ∀ {f : M → N}, ∀ {φ : OpenPartialHomeomorph M H}, ∀ {ψ : OpenPartialHomeomorph N G},
    ∀ {s : Set M}, IsOpen s → P f φ ψ → P f (φ.restr s) ψ
  -- Note: the analogous `mono_target` statement is true for both immersions and submersions.
  -- If and when a future lemma requires it, add this here.
  congr : ∀ {f g : M → N}, ∀ {φ : OpenPartialHomeomorph M H}, ∀ {ψ : OpenPartialHomeomorph N G},
    EqOn f g φ.source → P f φ ψ → P g φ ψ

variable (I J n) in
/-- Data witnessing the fact that `f` has local property `P` at `x` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72df890c93d70eb2965f0bd7ec30aded4a9b5cfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
