# symm_image_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9712819-e24a-440b-b335-0be56d3951ee",
  "kind": "theorem",
  "lexical_name": "symm_image_image",
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
  "slug": "symm-image-image--88d6cb80447c07cd9ba2a414",
  "source": {
    "blob": "7627a73917ef9453e1e477b42dc86094e15cc8ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88d6cb80447c07cd9ba2a4142553f07fbf8598095672169ce0903632e706f7d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9712819-e24a-440b-b335-0be56d3951ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_image_image (e : P₁ ≃ᴬ[k] P₂) (s : Set P₁) : e.symm '' (e '' s) = s :=
  e.toEquiv.symm_image_image s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousAffineEquiv/Variant6f3a89026db7095fb691dccbd590acfc9a551170f4ff692e89ce9c5d95a701ca.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7627a73917ef9453e1e477b42dc86094e15cc8ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
