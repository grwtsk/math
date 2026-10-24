# instModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbfe7e91974a3749c9f1956df818bfb9fec1e6a72f81332dffa3d6ee9cda5a7b",
  "kind": "instance",
  "lexical_name": "instModule",
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
  "slug": "instmodule--48f2f58d04e7c8b7fabc235c",
  "source": {
    "blob": "49aae894fdad4329f49a741b00dbb03e46d4f99e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 78,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48f2f58d04e7c8b7fabc235cbcf57dee55c64ac5290efe3f2b6cdc1c4d31cd5a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbfe7e91974a3749c9f1956df818bfb9fec1e6a72f81332dffa3d6ee9cda5a7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModule : Module 𝕜≥0 E :=
  Module.compHom E Nonneg.coeRingHom

end Module

end Nonneg
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Module/Variante80f5276e0e0dcef5bdf13d1d125eb26428b7f0bcce7b00a4783d2f2d3603ee0.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49aae894fdad4329f49a741b00dbb03e46d4f99e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
