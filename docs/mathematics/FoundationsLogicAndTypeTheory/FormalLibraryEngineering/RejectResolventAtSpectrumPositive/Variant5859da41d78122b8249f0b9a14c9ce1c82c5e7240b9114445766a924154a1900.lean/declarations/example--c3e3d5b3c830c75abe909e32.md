# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32ca6d229502f738e848726604cd6db33b30b73fb94defeab2c31695c584017a",
  "kind": "example",
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
  "slug": "example--c3e3d5b3c830c75abe909e32",
  "source": {
    "blob": "48b5034ff999dbc02edd1800d65e7dbb3370da78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 9,
    "line": 6,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectResolventAtSpectrumPositive/Variant5859da41d78122b8249f0b9a14c9ce1c82c5e7240b9114445766a924154a1900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3e3d5b3c830c75abe909e3267d7d11dee27d16ee702c6c366400c6abd00cc71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectResolventAtSpectrumPositive/Variant5859da41d78122b8249f0b9a14c9ce1c82c5e7240b9114445766a924154a1900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32ca6d229502f738e848726604cd6db33b30b73fb94defeab2c31695c584017a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–9.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (M : Model (Fin 1) (Fin 1 → ℝ)) (z : ℝ)
    (hz : ∀ i, M.eigenvalue i ≠ z) :
    (M.shiftedOperator z).comp (M.resolvent z) = LinearMap.id :=
  M.shiftedOperator_comp_resolvent z hz
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectResolventAtSpectrumPositive/Variant5859da41d78122b8249f0b9a14c9ce1c82c5e7240b9114445766a924154a1900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectResolventAtSpectrumPositive/Variant5859da41d78122b8249f0b9a14c9ce1c82c5e7240b9114445766a924154a1900.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b5034ff999dbc02edd1800d65e7dbb3370da78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
