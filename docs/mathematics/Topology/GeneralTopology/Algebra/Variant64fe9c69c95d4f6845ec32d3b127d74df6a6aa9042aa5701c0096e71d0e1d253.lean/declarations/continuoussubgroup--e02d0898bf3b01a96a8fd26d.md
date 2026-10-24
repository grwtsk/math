# continuousSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:926052ade1d8526467ef79f6ed0cc905844c491f855d5418f5ba6677d700f921",
  "kind": "def",
  "lexical_name": "continuousSubgroup",
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
  "slug": "continuoussubgroup--e02d0898bf3b01a96a8fd26d",
  "source": {
    "blob": "79a8de5f26d259da5bc1e7e076d939f1a717dd73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 239,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant64fe9c69c95d4f6845ec32d3b127d74df6a6aa9042aa5701c0096e71d0e1d253.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e02d0898bf3b01a96a8fd26d6f8f6893c9bc8bb763357d1168b65dcfc5128e09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant64fe9c69c95d4f6845ec32d3b127d74df6a6aa9042aa5701c0096e71d0e1d253.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:926052ade1d8526467ef79f6ed0cc905844c491f855d5418f5ba6677d700f921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousSubgroup (α : Type*) (β : Type*) [TopologicalSpace α] [TopologicalSpace β] [Group β]
    [IsTopologicalGroup β] : Subgroup (α → β) :=
  { continuousSubmonoid α β with inv_mem' := fun fc => Continuous.inv fc }

end Subtype

namespace ContinuousMap

variable {α β : Type*} [TopologicalSpace α] [TopologicalSpace β]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant64fe9c69c95d4f6845ec32d3b127d74df6a6aa9042aa5701c0096e71d0e1d253.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant64fe9c69c95d4f6845ec32d3b127d74df6a6aa9042aa5701c0096e71d0e1d253.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79a8de5f26d259da5bc1e7e076d939f1a717dd73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
