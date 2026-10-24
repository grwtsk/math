# completeSpace_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f910c660da9632903762d649395b8cb735af4c1b37644df5cac750791eee551",
  "kind": "instance",
  "lexical_name": "completeSpace_map",
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
  "slug": "completespace-map--a7711c0f65c4153567f47405",
  "source": {
    "blob": "3d30871a2dd49dcabb4a0ab8e742fac9ccdebc92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 214,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant9df2bc9cb195039f118eb9974230312960aecff5c8dc80dc21f963b32f3c5bd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7711c0f65c4153567f474057c3daedbc24050ea730137e3ab70c1ee1df97d23",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIsometry/Variant9df2bc9cb195039f118eb9974230312960aecff5c8dc80dc21f963b32f3c5bd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f910c660da9632903762d649395b8cb735af4c1b37644df5cac750791eee551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance completeSpace_map [RingHomSurjective σ₁₂] (p : Submodule R E) [CompleteSpace p] :
    CompleteSpace (p.map (f : E →ₛₗ[σ₁₂] E₂)) :=
  ((isComplete_map_iff f).2 <| completeSpace_coe_iff_isComplete.1 ‹_›).completeSpace_coe

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIsometry/Variant9df2bc9cb195039f118eb9974230312960aecff5c8dc80dc21f963b32f3c5bd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIsometry/Variant9df2bc9cb195039f118eb9974230312960aecff5c8dc80dc21f963b32f3c5bd5.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d30871a2dd49dcabb4a0ab8e742fac9ccdebc92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
