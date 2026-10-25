# le_of_le_diseq_cert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f914a454375f80fb7ac2bd0e5f0e82d733f79410e066a7e14eb120a5948a8761",
  "kind": "def",
  "lexical_name": "le_of_le_diseq_cert",
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
  "slug": "le-of-le-diseq-cert--ce51b80496992f67588d2be2",
  "source": {
    "blob": "1e5d731a50a7d946997aeff81d9c755aabd23e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1313,
    "line": 1309,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce51b80496992f67588d2be2595caadb89c7e812086429c8cf15e8dd5f852bbb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f914a454375f80fb7ac2bd0e5f0e82d733f79410e066a7e14eb120a5948a8761`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1309–1313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def le_of_le_diseq_cert (p₁ : Poly) (p₂ : Poly) (p₃ : Poly) : Bool :=
  -- Remark: we can generate two different certificates in the future, and avoid the `||` in the certificate.
  (p₂.beq' p₁ || p₂.beq' (p₁.mul_k (-1))).and'
  (p₃.beq' (p₁.addConst_k 1))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean#L1309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e5d731a50a7d946997aeff81d9c755aabd23e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
