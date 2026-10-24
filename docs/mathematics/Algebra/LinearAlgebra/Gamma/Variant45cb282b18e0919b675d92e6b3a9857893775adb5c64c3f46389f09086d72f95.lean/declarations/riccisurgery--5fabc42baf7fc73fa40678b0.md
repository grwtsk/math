# ricciSurgery

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:591fb881b331f2a3f5d8cf617c4900c90dc030e69f20fb3ae967314b525f59ed",
  "kind": "def",
  "lexical_name": "ricciSurgery",
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
  "slug": "riccisurgery--5fabc42baf7fc73fa40678b0",
  "source": {
    "blob": "aa3d9e8d306e9ac82e10631af6b2e685b457fba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 249,
    "path": "GRWTSK/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5fabc42baf7fc73fa40678b019bb8b1e570767b65de55591ebf5569da84097db",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:591fb881b331f2a3f5d8cf617c4900c90dc030e69f20fb3ae967314b525f59ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ricciSurgery : Gamma := { ricciFlow with
  logicalFoundation := LogicalFoundation.ricciSurgery
  evolutionMode := EvolutionMode.ricciFlowWithSurgery
  exportSurgeryTrace := true
  preserveBijectivitySound := falseBijectivitySound LogicalFoundation.ricciSurgery }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Gamma/Variant45cb282b18e0919b675d92e6b3a9857893775adb5c64c3f46389f09086d72f95.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa3d9e8d306e9ac82e10631af6b2e685b457fba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
