# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:005db110d6683cd42acd3f5a18de69b4b6b31bc6b005b056d8772576876b6c69",
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
  "slug": "example--ad040dab5a7278f2898c0a12",
  "source": {
    "blob": "650d59aeef1ba2d75d56f56a49f6a721feccb3b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 38,
    "path": "GRWTSK/Algebra/ModuleCat/Variantf325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad040dab5a7278f2898c0a1224f0156d0bb9f9bcbb4afaef4c3d17692fd1361c",
  "verification": {
    "reference": "docs/verification/Algebra/ModuleCat/Variantf325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:005db110d6683cd42acd3f5a18de69b4b6b31bc6b005b056d8772576876b6c69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {X Y Z : ModuleCat R} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ModuleCat/Variantf325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ModuleCat/Variantf325841235f2837ebc277b7c76f33a21193767a9d80fbcc28f6f460c70aaef9a.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `650d59aeef1ba2d75d56f56a49f6a721feccb3b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
