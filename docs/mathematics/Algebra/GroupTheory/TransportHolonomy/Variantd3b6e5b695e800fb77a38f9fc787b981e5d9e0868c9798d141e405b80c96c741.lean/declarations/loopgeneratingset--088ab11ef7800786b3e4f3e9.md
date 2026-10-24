# LoopGeneratingSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7765731b42f938d630261248e30e0ed91219c63290f31ea26fa4758ff98e99f3",
  "kind": "structure",
  "lexical_name": "LoopGeneratingSet",
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
  "slug": "loopgeneratingset--088ab11ef7800786b3e4f3e9",
  "source": {
    "blob": "3f9769ac436c4d1c8e1ff67c46aa3769ac59d5e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:088ab11ef7800786b3e4f3e9d9aec6e6aadaf9c805dddaf57aca1b5bb157eab2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7765731b42f938d630261248e30e0ed91219c63290f31ea26fa4758ff98e99f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LoopGeneratingSet
    (Loop : Type u) (Generator : Type w) [Group Loop] where
  generator : Generator → Loop
  generates :
    Subgroup.closure (Set.range generator) = ⊤

/-- Loops whose holonomy fixes a selected realization form a subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TransportHolonomy/Variantd3b6e5b695e800fb77a38f9fc787b981e5d9e0868c9798d141e405b80c96c741.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f9769ac436c4d1c8e1ff67c46aa3769ac59d5e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
