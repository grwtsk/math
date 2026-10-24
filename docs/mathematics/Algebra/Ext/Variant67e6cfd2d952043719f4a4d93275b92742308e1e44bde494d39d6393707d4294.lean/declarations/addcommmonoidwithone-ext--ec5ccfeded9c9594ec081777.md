# AddCommMonoidWithOne.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:853156b6-542c-42c1-4e69-607cda2c0e25",
  "kind": "theorem",
  "lexical_name": "AddCommMonoidWithOne.ext",
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
  "slug": "addcommmonoidwithone-ext--ec5ccfeded9c9594ec081777",
  "source": {
    "blob": "3d7a340d5bff81ea175a269616378866a9531e99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 119,
    "path": "GRWTSK/Algebra/Ext/Variant67e6cfd2d952043719f4a4d93275b92742308e1e44bde494d39d6393707d4294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec5ccfeded9c9594ec081777c29344ab188034d71ea37e30e73388c7219cc393",
  "verification": {
    "reference": "docs/verification/Algebra/Ext/Variant67e6cfd2d952043719f4a4d93275b92742308e1e44bde494d39d6393707d4294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:853156b6-542c-42c1-4e69-607cda2c0e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[ext] theorem AddCommMonoidWithOne.ext ⦃inst₁ inst₂ : AddCommMonoidWithOne R⦄
    (h_add : local_hAdd[R, inst₁] = local_hAdd[R, inst₂])
    (h_one : (letI := inst₁; One.one : R) = (letI := inst₂; One.one : R)) :
    inst₁ = inst₂ :=
  AddCommMonoidWithOne.toAddMonoidWithOne_injective <|
    AddMonoidWithOne.ext h_add h_one

namespace NonAssocSemiring

/- The best place to prove that the `NatCast` is determined by the other operations is probably in
an extensionality lemma for `AddMonoidWithOne`, in which case we may as well do the typeclasses
defined in `Mathlib/Algebra/GroupWithZero/Defs.lean` as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ext/Variant67e6cfd2d952043719f4a4d93275b92742308e1e44bde494d39d6393707d4294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ext/Variant67e6cfd2d952043719f4a4d93275b92742308e1e44bde494d39d6393707d4294.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d7a340d5bff81ea175a269616378866a9531e99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
