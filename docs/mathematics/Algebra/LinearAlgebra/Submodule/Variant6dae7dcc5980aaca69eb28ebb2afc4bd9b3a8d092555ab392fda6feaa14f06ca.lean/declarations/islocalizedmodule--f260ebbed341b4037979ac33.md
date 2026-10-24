# isLocalizedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f31a3e492e166fe14825c6280eb7801852e7953031992746d933bbc37bf2b5b7",
  "kind": "instance",
  "lexical_name": "isLocalizedModule",
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
  "slug": "islocalizedmodule--f260ebbed341b4037979ac33",
  "source": {
    "blob": "97b220523515c73ebc02b6e47a1e8b36070d02d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 178,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f260ebbed341b4037979ac3351e13d80a42d63cc8792f4f91a00945f139eb451",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f31a3e492e166fe14825c6280eb7801852e7953031992746d933bbc37bf2b5b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isLocalizedModule : IsLocalizedModule p (M'.toLocalized' S p f) :=
  inferInstanceAs (IsLocalizedModule p (M'.toLocalized₀ p f))

/-- The canonical isomorphism between the localization of a submodule and its realization
as a submodule in the localized module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variant6dae7dcc5980aaca69eb28ebb2afc4bd9b3a8d092555ab392fda6feaa14f06ca.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97b220523515c73ebc02b6e47a1e8b36070d02d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
