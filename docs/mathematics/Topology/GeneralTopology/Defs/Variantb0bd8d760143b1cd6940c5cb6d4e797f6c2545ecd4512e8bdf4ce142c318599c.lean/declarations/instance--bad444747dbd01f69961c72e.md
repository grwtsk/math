# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fb152949b9394b726ed2ef357dc408d4e8a4c9b1607c48c3ba9ee752be88972",
  "kind": "instance",
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
  "slug": "instance--bad444747dbd01f69961c72e",
  "source": {
    "blob": "101adbf256a058bd3097a212f3c6fd37d1d7a1ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 270,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bad444747dbd01f69961c72e19d9ccd3c25f6115b17c6a8866785034a969862b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fb152949b9394b726ed2ef357dc408d4e8a4c9b1607c48c3ba9ee752be88972`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [∀ i, AddGroup (β i)] : AddGroup (Π₀ i, β i) :=
  fast_instance% DFunLike.coe_injective.addGroup _ coe_zero coe_add coe_neg coe_sub
    (fun _ _ => coe_nsmul _ _) fun _ _ => coe_zsmul _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `101adbf256a058bd3097a212f3c6fd37d1d7a1ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
