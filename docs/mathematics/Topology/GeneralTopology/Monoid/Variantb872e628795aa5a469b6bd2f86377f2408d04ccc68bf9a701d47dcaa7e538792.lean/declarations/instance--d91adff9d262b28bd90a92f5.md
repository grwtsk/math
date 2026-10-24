# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b133f1cc375c85e87eeac587c7ce10158581579828638a4ef3221f321ec92ae",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d91adff9d262b28bd90a92f5",
  "source": {
    "blob": "6a7bc2fe207ba59938a4da8faf37275a73b27ee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 701,
    "line": 681,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d91adff9d262b28bd90a92f53ba2dc4d47dc18aebf90f6dc603ce2f8cc39a17a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b133f1cc375c85e87eeac587c7ce10158581579828638a4ef3221f321ec92ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 681–701.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [TopologicalSpace α] [Mul α] [ContinuousMul α] : ContinuousMul αᵐᵒᵖ :=
  ⟨continuous_op.comp (continuous_unop.snd'.mul continuous_unop.fst')⟩

end MulOpposite

namespace Units

open MulOpposite

variable [TopologicalSpace α] [Monoid α] [ContinuousMul α]

/-- If multiplication on a monoid is continuous, then multiplication on the units of the monoid,
with respect to the induced topology, is continuous.

Inversion is also continuous, but we register this in a later file, `Topology.Algebra.Group`,
because the predicate `ContinuousInv` has not yet been defined. -/
@[to_additive "If addition on an additive monoid is continuous, then addition on the additive units
of the monoid, with respect to the induced topology, is continuous.

Negation is also continuous, but we register this in a later file, `Topology.Algebra.Group`, because
the predicate `ContinuousNeg` has not yet been defined."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean#L681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a7bc2fe207ba59938a4da8faf37275a73b27ee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
