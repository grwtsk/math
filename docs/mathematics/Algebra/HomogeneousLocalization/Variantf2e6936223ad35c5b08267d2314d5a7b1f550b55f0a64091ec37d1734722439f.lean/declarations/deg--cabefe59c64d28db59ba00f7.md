# deg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6f2437d5592c0715c6d81b7dc0e0152f9890dce6999162053edeff3a5ec41d9",
  "kind": "def",
  "lexical_name": "deg",
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
  "slug": "deg--cabefe59c64d28db59ba00f7",
  "source": {
    "blob": "08330c9a3773dbf36555fa72a6c31ebee455915e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 502,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cabefe59c64d28db59ba00f7d16e61207b610fce4ff0d6cf0529844b17a63d5e",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6f2437d5592c0715c6d81b7dc0e0152f9890dce6999162053edeff3a5ec41d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deg (f : HomogeneousLocalization 𝒜 x) : ι :=
  (Quotient.out' f).deg
#align homogeneous_localization.deg HomogeneousLocalization.deg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variantf2e6936223ad35c5b08267d2314d5a7b1f550b55f0a64091ec37d1734722439f.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08330c9a3773dbf36555fa72a6c31ebee455915e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
