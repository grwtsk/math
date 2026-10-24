# repOfTprodIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:111678ea51dcfdf7f69913aab1e22521213ff0386db7c33dadbc63b344a4d71b",
  "kind": "def",
  "lexical_name": "repOfTprodIso",
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
  "slug": "repoftprodiso--3840ed64cc2a6a7d92c6c8ae",
  "source": {
    "blob": "7f1bee9a67c0a341c3310c09cc9c0fcaabcceac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 527,
    "path": "GRWTSK/Algebra/GroupTheory/Rep/Variant05cd66669c7342b5101ac8c98d2088cc6462ee3e7a18cb60667ddcd03ab05fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3840ed64cc2a6a7d92c6c8aea44cbd91ea1a0b5bbb33bd0290084d8f28bd5611",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Rep/Variant05cd66669c7342b5101ac8c98d2088cc6462ee3e7a18cb60667ddcd03ab05fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:111678ea51dcfdf7f69913aab1e22521213ff0386db7c33dadbc63b344a4d71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def repOfTprodIso : Rep.of (ρ.tprod τ) ≅ Rep.of ρ ⊗ Rep.of τ :=
  Iso.refl _
set_option linter.uppercaseLean3 false in
#align representation.Rep_of_tprod_iso Representation.repOfTprodIso

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Rep/Variant05cd66669c7342b5101ac8c98d2088cc6462ee3e7a18cb60667ddcd03ab05fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Rep/Variant05cd66669c7342b5101ac8c98d2088cc6462ee3e7a18cb60667ddcd03ab05fea.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1bee9a67c0a341c3310c09cc9c0fcaabcceac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
