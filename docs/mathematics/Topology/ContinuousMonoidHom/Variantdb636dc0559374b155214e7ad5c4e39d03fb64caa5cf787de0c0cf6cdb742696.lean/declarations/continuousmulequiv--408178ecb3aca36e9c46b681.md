# ContinuousMulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d98175f2d03808ff29c5f98e9392ecef1de9de6c7ff1b04a64f1c393f297ecf",
  "kind": "structure",
  "lexical_name": "ContinuousMulEquiv",
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
  "slug": "continuousmulequiv--408178ecb3aca36e9c46b681",
  "source": {
    "blob": "0d970753643a6c1e4d2363a6b5e2df7bf0a7ae47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 301,
    "path": "GRWTSK/Topology/ContinuousMonoidHom/Variantdb636dc0559374b155214e7ad5c4e39d03fb64caa5cf787de0c0cf6cdb742696.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:408178ecb3aca36e9c46b6815ad20ea3c9a4cd7f47d2eafbe99682e2c670e5b5",
  "verification": {
    "reference": "docs/verification/Topology/ContinuousMonoidHom/Variantdb636dc0559374b155214e7ad5c4e39d03fb64caa5cf787de0c0cf6cdb742696.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d98175f2d03808ff29c5f98e9392ecef1de9de6c7ff1b04a64f1c393f297ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ContinuousMulEquiv [Mul G] [Mul H] extends G ≃* H , G ≃ₜ H

/-- The homeomorphism induced from a two-sided continuous isomorphism of groups. -/
add_decl_doc ContinuousMulEquiv.toHomeomorph

/-- The homeomorphism induced from a two-sided continuous isomorphism additive groups. -/
add_decl_doc ContinuousAddEquiv.toHomeomorph

@[inherit_doc]
infixl:25 " ≃ₜ* " => ContinuousMulEquiv

@[inherit_doc]
infixl:25 " ≃ₜ+ " => ContinuousAddEquiv

section

namespace ContinuousMulEquiv

variable {M N : Type*} [TopologicalSpace M] [TopologicalSpace N] [Mul M] [Mul N]

section coe

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/ContinuousMonoidHom/Variantdb636dc0559374b155214e7ad5c4e39d03fb64caa5cf787de0c0cf6cdb742696.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/ContinuousMonoidHom/Variantdb636dc0559374b155214e7ad5c4e39d03fb64caa5cf787de0c0cf6cdb742696.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d970753643a6c1e4d2363a6b5e2df7bf0a7ae47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
