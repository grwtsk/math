# TauPackage.instInhabited

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0585b134807c91aa505c53c2c265cb5768d31f9041d9f111e9da9503e8486da",
  "kind": "instance",
  "lexical_name": "TauPackage.instInhabited",
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
  "slug": "taupackage-instinhabited--f9d560775c5d48c0db184418",
  "source": {
    "blob": "69c4088316c800628826c79b2c643c22292baebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9d560775c5d48c0db1844189eb8aeb0f2e389c2c7671e5ababe70808c52fe33",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0585b134807c91aa505c53c2c265cb5768d31f9041d9f111e9da9503e8486da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance TauPackage.instInhabited (α : Type*) : Inhabited (TauPackage α α) :=
  ⟨{ unitBallPackage α with
      τ := 2
      one_lt_tau := one_lt_two }⟩
#align besicovitch.tau_package.inhabited Besicovitch.TauPackage.instInhabited

variable {α : Type*} [MetricSpace α] {β : Type u}

namespace TauPackage

variable [Nonempty β] (p : TauPackage β α)

/-- Choose inductively large balls with centers that are not contained in the union of already
chosen balls. This is a transfinite induction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c4088316c800628826c79b2c643c22292baebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
