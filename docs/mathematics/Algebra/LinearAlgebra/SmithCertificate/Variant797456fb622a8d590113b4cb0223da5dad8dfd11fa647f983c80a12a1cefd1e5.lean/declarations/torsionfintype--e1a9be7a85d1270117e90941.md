# torsionFintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a914718670b0d0d216986772bce8f19fbec3a1eb09a4ccaf746f5a687201cd3",
  "kind": "instance",
  "lexical_name": "torsionFintype",
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
  "slug": "torsionfintype--e1a9be7a85d1270117e90941",
  "source": {
    "blob": "23ce3de2fb204e802692326e08de25e8b6d0afc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1a9be7a85d1270117e909412a9ea764b569ac05158467ad9fbfeaa862be001f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a914718670b0d0d216986772bce8f19fbec3a1eb09a4ccaf746f5a687201cd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance torsionFintype :
    Fintype (SmithTorsionCoordinates certificate.torsionOrders) := by
  letI (index : Fin certificate.torsionCount) :
      NeZero (certificate.torsionOrders index) :=
    ⟨certificate.torsionOrder_ne_zero index⟩
  infer_instance

end DegreeSmithCertificate

end

end Mathematics.Homology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SmithCertificate/Variant797456fb622a8d590113b4cb0223da5dad8dfd11fa647f983c80a12a1cefd1e5.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23ce3de2fb204e802692326e08de25e8b6d0afc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
