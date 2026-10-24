# coe_GLPos_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bfb67a7-b530-412e-cab2-393409cb925d",
  "kind": "theorem",
  "lexical_name": "coe_GLPos_neg",
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
  "slug": "coe-glpos-neg--0a6c8f76cfd093afc0540fb2",
  "source": {
    "blob": "f250cef75700a85540d60fa10fc48e189b6eda22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 350,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a6c8f76cfd093afc0540fb231870ae3cf5bc5b7363aff16cef957a6d9d6a6c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bfb67a7-b530-412e-cab2-393409cb925d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_GLPos_neg (g : SpecialLinearGroup n R) : ↑(-g) = -(↑g : GLPos n R) :=
  Subtype.ext <| Units.ext rfl

end SpecialLinearGroup

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant03d0991cd5d5bda26d6cd351113104cd9fe515181dcaa01cb47a8e46fc49d333.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f250cef75700a85540d60fa10fc48e189b6eda22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
