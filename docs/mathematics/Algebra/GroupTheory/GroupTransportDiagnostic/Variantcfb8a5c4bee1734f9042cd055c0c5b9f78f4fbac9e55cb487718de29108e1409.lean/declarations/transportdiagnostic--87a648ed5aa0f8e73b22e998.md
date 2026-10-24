# transportDiagnostic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:26d640b208ac1ff422b6b4aaadbdc6572952e924f1d62980dc7079782193c0d3",
  "kind": "def",
  "lexical_name": "transportDiagnostic",
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
  "slug": "transportdiagnostic--87a648ed5aa0f8e73b22e998",
  "source": {
    "blob": "b258cf196d22f7aa7acc7fef832de74a05a79553",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 11,
    "path": "GRWTSK/Algebra/GroupTheory/GroupTransportDiagnostic/Variantcfb8a5c4bee1734f9042cd055c0c5b9f78f4fbac9e55cb487718de29108e1409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87a648ed5aa0f8e73b22e99846c9b5a93343a3e24a5c2c7229f81b6c63291b05",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/GroupTransportDiagnostic/Variantcfb8a5c4bee1734f9042cd055c0c5b9f78f4fbac9e55cb487718de29108e1409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:26d640b208ac1ff422b6b4aaadbdc6572952e924f1d62980dc7079782193c0d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def transportDiagnostic {G : Type} [Group G] (e : G ≃ G) :
    @MulEquiv G G e.group.toMul inferInstance := e.mulEquiv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/GroupTransportDiagnostic/Variantcfb8a5c4bee1734f9042cd055c0c5b9f78f4fbac9e55cb487718de29108e1409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/GroupTransportDiagnostic/Variantcfb8a5c4bee1734f9042cd055c0c5b9f78f4fbac9e55cb487718de29108e1409.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b258cf196d22f7aa7acc7fef832de74a05a79553` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
