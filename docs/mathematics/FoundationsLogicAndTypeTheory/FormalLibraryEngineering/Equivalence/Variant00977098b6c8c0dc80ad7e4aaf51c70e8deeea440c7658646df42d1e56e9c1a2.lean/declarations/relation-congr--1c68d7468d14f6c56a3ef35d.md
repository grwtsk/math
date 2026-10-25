# relation_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ace99af3-8fdc-5be1-2060-ac2dd66aba9a",
  "kind": "theorem",
  "lexical_name": "relation_congr",
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
  "slug": "relation-congr--1c68d7468d14f6c56a3ef35d",
  "source": {
    "blob": "43f1fd568fc593415ed142c039d5eba888e0c9de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1259,
    "line": 1247,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c68d7468d14f6c56a3ef35d9e60d433ae24116dd569fcef1e25d656c746b009",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ace99af3-8fdc-5be1-2060-ac2dd66aba9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1247–1259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relation_congr {a b c d : Expr S}
    (ha : HasType P Γ a B.yType) (ma : WellModed γ a .data)
    (hb : HasType P Γ b B.yType) (mb : WellModed γ b .data)
    (hc : HasType P Γ c B.yType) (mc : WellModed γ c .data)
    (hd : HasType P Γ d B.yType) (md : WellModed γ d .data)
    (he : Proves P Γ γ (B.relation L.code KY.code KP.code a b))
    (hf : Proves P Γ γ (B.relation L.code KY.code KP.code c d)) :
    Equivalent P Γ γ (B.relation L.code KY.code KP.code a c) (B.relation L.code KY.code
      KP.code b d) :=
  H.relational_formed.channel.relation_congr KP H.base_sorted H.base_mode
    (H.goodBody_family KY KP) (H.shape ▸ ha) ma (H.shape ▸ hb) mb (H.shape ▸ hc) mc (H.shape ▸
      hd) md he hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Equivalence/Variant00977098b6c8c0dc80ad7e4aaf51c70e8deeea440c7658646df42d1e56e9c1a2.lean#L1247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43f1fd568fc593415ed142c039d5eba888e0c9de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
