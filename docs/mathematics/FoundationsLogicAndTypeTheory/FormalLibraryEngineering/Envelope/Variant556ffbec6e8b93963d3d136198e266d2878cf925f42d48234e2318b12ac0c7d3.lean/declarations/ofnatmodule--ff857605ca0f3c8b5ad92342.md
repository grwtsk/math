# ofNatModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fe6914ea44c23c70d989287c42baa09f4f871ba9c73ed800650844d17d4333b",
  "kind": "def",
  "lexical_name": "ofNatModule",
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
  "slug": "ofnatmodule--ff857605ca0f3c8b5ad92342",
  "source": {
    "blob": "c5ecc6373aff39b2d2e9968d2e422d2518b4a883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff857605ca0f3c8b5ad923422a2d23ba8517f6750beb641186315f442b5e5e49",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fe6914ea44c23c70d989287c42baa09f4f871ba9c73ed800650844d17d4333b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofNatModule : IntModule (Q α) := {
  nsmul := ⟨nsmul⟩,
  zsmul := ⟨zsmul⟩,
  zero,
  add, sub, neg,
  add_comm, add_assoc, add_zero,
  neg_add_cancel, sub_eq_add_neg,
  one_zsmul, zero_zsmul, add_zsmul,
  zsmul_natCast_eq_nsmul
}

attribute [instance] ofNatModule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ecc6373aff39b2d2e9968d2e422d2518b4a883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
