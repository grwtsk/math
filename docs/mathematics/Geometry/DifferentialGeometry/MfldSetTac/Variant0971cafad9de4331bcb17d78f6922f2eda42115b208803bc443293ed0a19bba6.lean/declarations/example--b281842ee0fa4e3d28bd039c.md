# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2725410ba41b8049a4f354bb052c79a8c3165a3b232fafd849dbc675d06fce6f",
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
  "slug": "example--b281842ee0fa4e3d28bd039c",
  "source": {
    "blob": "ad921934de09745a1b04a3f25fbe8cf550a35149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 90,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b281842ee0fa4e3d28bd039c92168b43ac57cd653beb7be239f0daedb085eef1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2725410ba41b8049a4f354bb052c79a8c3165a3b232fafd849dbc675d06fce6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example
  {I : ModelWithCorners 𝕜 E H}
  {I' : ModelWithCorners 𝕜 E' H'}
  {I'' : ModelWithCorners 𝕜 E'' H''}
  (e₁ : PartialHomeomorph M H)
  (e₂ : PartialHomeomorph M' H')
  (e₃ : PartialHomeomorph M'' H'')
  {f : M → M'}
  {g : M' → M''} :
  (Set.preimage (f ∘ ((e₁.toPartialEquiv.trans I.toPartialEquiv).symm))
      (e₂.toPartialEquiv.trans I'.toPartialEquiv).source) ⊆
    {y : E |
    ((e₃.toPartialEquiv.trans I''.toPartialEquiv) ∘
          (g ∘ f) ∘ ((e₁.toPartialEquiv.trans I.toPartialEquiv).symm)) y
    = (((e₃.toPartialEquiv.trans I''.toPartialEquiv : M'' → E'') ∘
             g ∘ ((e₂.toPartialEquiv.trans I'.toPartialEquiv).symm)) ∘
          (e₂.toPartialEquiv.trans I'.toPartialEquiv : M' → E') ∘
            f ∘ ((e₁.toPartialEquiv.trans I.toPartialEquiv).symm)) y} := by
  mfld_set_tac

end tests
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MfldSetTac/Variant0971cafad9de4331bcb17d78f6922f2eda42115b208803bc443293ed0a19bba6.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad921934de09745a1b04a3f25fbe8cf550a35149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
