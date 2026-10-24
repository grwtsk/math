# Pretrivialization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8b40bcc75a953249e3c6544e473a66a59f6dd112e90d7143453d1f7e604bed5",
  "kind": "structure",
  "lexical_name": "Pretrivialization",
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
  "slug": "pretrivialization--548ceb6f7ba03f64eb261478",
  "source": {
    "blob": "3ad56c4d3fa8bca7a5bfdedaa6bb14ec96e1fd5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 67,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:548ceb6f7ba03f64eb261478175a86544ce184183571714b53cef84f2a834d2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8b40bcc75a953249e3c6544e473a66a59f6dd112e90d7143453d1f7e604bed5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Pretrivialization (proj : Z → B) extends LocalEquiv Z (B × F) where
  open_target : IsOpen target
  baseSet : Set B
  open_baseSet : IsOpen baseSet
  source_eq : source = proj ⁻¹' baseSet
  target_eq : target = baseSet ×ˢ univ
  proj_toFun : ∀ p ∈ source, (toFun p).1 = proj p
#align pretrivialization Pretrivialization

namespace Pretrivialization

variable {F}
variable (e : Pretrivialization F proj) {x : Z}

/-- Coercion of a pretrivialization to a function. We don't use `e.toFun` in the `CoeFun` instance
because it is actually `e.toLocalEquiv.toFun`, so `simp` will apply lemmas about
`toLocalEquiv`. While we may want to switch to this behavior later, doing it mid-port will break a
lot of proofs.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant35b7601577b3af3d626f562a66734ecbe0f3a6ea5e939bb061965fc3e90fc5b0.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad56c4d3fa8bca7a5bfdedaa6bb14ec96e1fd5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
