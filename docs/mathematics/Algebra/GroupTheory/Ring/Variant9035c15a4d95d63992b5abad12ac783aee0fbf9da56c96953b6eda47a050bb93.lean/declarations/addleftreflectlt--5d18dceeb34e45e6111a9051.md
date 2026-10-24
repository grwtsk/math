# addLeftReflectLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6d71b30aff9d3b56a5a4c2e3113560d12aee34f1817700eef7b41b2edad10ad",
  "kind": "instance",
  "lexical_name": "addLeftReflectLT",
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
  "slug": "addleftreflectlt--5d18dceeb34e45e6111a9051",
  "source": {
    "blob": "9b5e548b776c17f4c31c511321a81d13ce6ddba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 57,
    "path": "GRWTSK/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d18dceeb34e45e6111a9051c2f98408e9f8f42ae886f5cdfe2717246666f7ae",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6d71b30aff9d3b56a5a4c2e3113560d12aee34f1817700eef7b41b2edad10ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addLeftReflectLT [AddLeftReflectLT M] : AddLeftReflectLT { x : M // 0 < x } :=
  ⟨fun _ _ _ h => Subtype.coe_lt_coe.1 <| lt_of_add_lt_add_left h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ring/Variant9035c15a4d95d63992b5abad12ac783aee0fbf9da56c96953b6eda47a050bb93.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b5e548b776c17f4c31c511321a81d13ce6ddba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
