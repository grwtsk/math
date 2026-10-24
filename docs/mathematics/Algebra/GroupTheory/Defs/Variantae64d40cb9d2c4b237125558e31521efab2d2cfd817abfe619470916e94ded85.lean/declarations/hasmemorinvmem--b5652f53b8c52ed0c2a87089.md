# HasMemOrInvMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26600e486b6d1bc574f76330c3dfa910dd79fd1558363a58b073fa838069ddb4",
  "kind": "class",
  "lexical_name": "HasMemOrInvMem",
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
  "slug": "hasmemorinvmem--b5652f53b8c52ed0c2a87089",
  "source": {
    "blob": "25b204a70eaa95f84c361f95c836d9bf9ac92eb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantae64d40cb9d2c4b237125558e31521efab2d2cfd817abfe619470916e94ded85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5652f53b8c52ed0c2a870892975867a62651078afa76831cc2f14984eb203e1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantae64d40cb9d2c4b237125558e31521efab2d2cfd817abfe619470916e94ded85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26600e486b6d1bc574f76330c3dfa910dd79fd1558363a58b073fa838069ddb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasMemOrInvMem {S G : Type*} [Inv G] [SetLike S G] (s : S) : Prop where
  mem_or_inv_mem (s) (a : G) : a ∈ s ∨ a⁻¹ ∈ s

export HasMemOrNegMem (mem_or_neg_mem)
export HasMemOrInvMem (mem_or_inv_mem)

namespace HasMemOrInvMem

variable {S G : Type*} [Inv G] [SetLike S G] (s : S) [HasMemOrInvMem s]

@[to_additive (attr := aesop unsafe 70% apply)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantae64d40cb9d2c4b237125558e31521efab2d2cfd817abfe619470916e94ded85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantae64d40cb9d2c4b237125558e31521efab2d2cfd817abfe619470916e94ded85.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25b204a70eaa95f84c361f95c836d9bf9ac92eb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
