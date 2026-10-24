# addCommMonoidOfLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df0de89770a8d08c8da2aa7e04e167cda2b209c03ce6c6098a16f24e8b30493f",
  "kind": "instance",
  "lexical_name": "addCommMonoidOfLinearMap",
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
  "slug": "addcommmonoidoflinearmap--b7a5fb8f18dab8737c960309",
  "source": {
    "blob": "1a33de20aca76f9b2e73f5acd5d6ea89e52095cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 104,
    "path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7a5fb8f18dab8737c960309b49d80af4ed6904f5f134d8339823a3d14b52bc4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df0de89770a8d08c8da2aa7e04e167cda2b209c03ce6c6098a16f24e8b30493f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addCommMonoidOfLinearMap : AddCommMonoid (Π₀ i : ι, M i →ₗ[R] N) :=
  inferInstance
#align dfinsupp.add_comm_monoid_of_linear_map DFinsupp.addCommMonoidOfLinearMap

/-- Typeclass inference can't find `DFinsupp.module` without help for this case.
This is needed to define `DFinsupp.lsum` below.

The cause seems to be an inability to unify the `∀ i, AddCommMonoid (M i →ₗ[R] N)` instance that
we have with the `∀ i, Zero (M i →ₗ[R] N)` instance which appears as a parameter to the
`DFinsupp` type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a33de20aca76f9b2e73f5acd5d6ea89e52095cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
