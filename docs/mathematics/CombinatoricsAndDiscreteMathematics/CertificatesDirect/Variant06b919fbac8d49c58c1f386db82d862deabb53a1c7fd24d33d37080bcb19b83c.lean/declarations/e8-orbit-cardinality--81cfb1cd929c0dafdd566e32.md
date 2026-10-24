# e8_orbit_cardinality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cb70497-7592-c6fa-74ef-b5dd0e849dbe",
  "kind": "theorem",
  "lexical_name": "e8_orbit_cardinality",
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
  "slug": "e8-orbit-cardinality--81cfb1cd929c0dafdd566e32",
  "source": {
    "blob": "afbb7db15b02e959b830f440e25ca185f30fc7cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1002,
    "line": 1000,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81cfb1cd929c0dafdd566e32ca34becc06f4cb4187c940dd93a457fae993929d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cb70497-7592-c6fa-74ef-b5dd0e849dbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1000–1002.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem e8_orbit_cardinality : (Finset.univ.image e8.states).card = 240 :=
  certificate_cardinality e8 e8_checked

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CertificatesDirect/Variant06b919fbac8d49c58c1f386db82d862deabb53a1c7fd24d33d37080bcb19b83c.lean#L1000).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afbb7db15b02e959b830f440e25ca185f30fc7cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
