# cyclicCharacterProjector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a22f99c6c4704235e51b4a8ce0e0b2adb1617494e6f59b3d6e337548941bdcd7",
  "kind": "def",
  "lexical_name": "cyclicCharacterProjector",
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
  "slug": "cycliccharacterprojector--a649c7c346d7c4d8cbe7ad16",
  "source": {
    "blob": "186ec8cb4b2128e35e2727da318ed39dfd24a4af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 27,
    "path": "GRWTSK/Analysis/SpecialFunctions/AC6db419b9a8344dc/Variant13d907ab8f461ce93a5ad98ca6afacadbf3ef9cf04ad63178ef5d89d00acf0c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a649c7c346d7c4d8cbe7ad16a70f54a84ac4ff9b821b4ffcb0499fc6fd23be4a",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/AC6db419b9a8344dc/Variant13d907ab8f461ce93a5ad98ca6afacadbf3ef9cf04ad63178ef5d89d00acf0c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a22f99c6c4704235e51b4a8ce0e0b2adb1617494e6f59b3d6e337548941bdcd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cyclicCharacterProjector
    (j : ZMod n) (signal : CyclicSignal n) : CyclicSignal n :=
  fun r ↦
    (n : ℂ)⁻¹ * cyclicCharacter j r *
      cyclicCharacterCoefficient j signal

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/AC6db419b9a8344dc/Variant13d907ab8f461ce93a5ad98ca6afacadbf3ef9cf04ad63178ef5d89d00acf0c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/AC6db419b9a8344dc/Variant13d907ab8f461ce93a5ad98ca6afacadbf3ef9cf04ad63178ef5d89d00acf0c2.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `186ec8cb4b2128e35e2727da318ed39dfd24a4af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
