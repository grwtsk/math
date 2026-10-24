# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ab1b0600a74709f003814bd81f1cc0b431c80547b18c48d29332bda74c02ca0",
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
  "slug": "instance--3e791cc1cf9bfa306ab13788",
  "source": {
    "blob": "88f3f0a5b00ed11c1d1d1ec73150783bdb0a989e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e791cc1cf9bfa306ab137883fae7f2c6b016ba1a4362007787fd47f65c6bf83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ab1b0600a74709f003814bd81f1cc0b431c80547b18c48d29332bda74c02ca0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {A : Type*} [UniformSpace A] [CompleteSpace A] [NonUnitalSemiring A] [StarRing A]
    [IsTopologicalSemiring A] [ContinuousStar A] [Module R A] [IsScalarTower R A A]
    [SMulCommClass R A A] [StarModule R A] [ContinuousConstSMul R A] (x : A) :
    CompleteSpace (elemental R x) :=
  isClosed_closure.completeSpace_coe

/-- The coercion from an elemental algebra to the full algebra is a `IsClosedEmbedding`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnitalStarAlgebra/Varianteedb34cef62ce2793b7c8fc09d1c4ae572403121c36046e8171b4fb06b1e104d.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88f3f0a5b00ed11c1d1d1ec73150783bdb0a989e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
