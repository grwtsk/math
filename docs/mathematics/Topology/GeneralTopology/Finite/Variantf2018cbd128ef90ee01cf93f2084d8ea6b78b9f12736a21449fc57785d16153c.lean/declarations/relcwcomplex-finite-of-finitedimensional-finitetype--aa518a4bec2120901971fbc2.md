# RelCWComplex.finite_of_finiteDimensional_finiteType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84a19cbd-aeda-87a4-cd06-917632f22e03",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.finite_of_finiteDimensional_finiteType",
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
  "slug": "relcwcomplex-finite-of-finitedimensional-finitetype--aa518a4bec2120901971fbc2",
  "source": {
    "blob": "5d3d5b6888c90ebea105fa5b88146ad7291d872d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa518a4bec2120901971fbc26fc29da5db30a14e94997e276376cf7960af6309",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84a19cbd-aeda-87a4-cd06-917632f22e03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.finite_of_finiteDimensional_finiteType [FiniteDimensional C]
    [FiniteType C] : Finite C where
  eventually_isEmpty_cell := FiniteDimensional.eventually_isEmpty_cell
  finite_cell n := FiniteType.finite_cell n

namespace CWComplex

export RelCWComplex (FiniteDimensional FiniteType Finite FiniteDimensional.eventually_isEmpty_cell
  FiniteType.finite_cell finite_of_finiteDimensional_finiteType)

end CWComplex

/-- If we want to construct a relative CW complex of finite type, we can add the condition
`finite_cell` and relax the condition `mapsTo`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finite/Variantf2018cbd128ef90ee01cf93f2084d8ea6b78b9f12736a21449fc57785d16153c.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d3d5b6888c90ebea105fa5b88146ad7291d872d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
