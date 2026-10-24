# externalPNTAndWeakPsiSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c403d49aca0a5e9e54ea19c78c614984431b247ca585bed55b2db8223b09efb2",
  "kind": "def",
  "lexical_name": "externalPNTAndWeakPsiSource",
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
  "slug": "externalpntandweakpsisource--f8a7d571958f85d1e932dbdf",
  "source": {
    "blob": "eefb528165ad0cc8bbf186f331e60fbfa5d50f18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8a7d571958f85d1e932dbdf13bf74949a0733bd312d3638bd0495505c5ba629",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c403d49aca0a5e9e54ea19c78c614984431b247ca585bed55b2db8223b09efb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def externalPNTAndWeakPsiSource : ExternalPNTAndWeakPsiRecord where
  repository := "AlexKontorovich/PrimeNumberTheoremAnd"
  revision := "a5040887e6bb24f7c201db8568e7755c138b3878"
  proofFile := "PrimeNumberTheoremAnd/Consequences.lean"
  proofBlob := "6ca8f33be62e333e1a0e2774b78a35af9a57c049"
  theoremName := "WeakPNT'"
  parentWienerFile := "PrimeNumberTheoremAnd/Wiener.lean"
  parentWienerBlob := "06d464bfbf34b21360a8c725422d6c7d1cb4c2eb"
  parentWeakTheorem := "WeakPNT"
  externalMathlibRevision := "308445d7985027f538e281e18df29ca16ede2ba3"
  localMathlibRevision := "db584cd6d46c92f209a44c0f1c829460d327499d"

/-- Literally the inclusive arithmetic von Mangoldt sum in the external
WeakPNT' statement, rebuilt using the LOCAL pinned Lambda function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ExternalPNTAndWeakPsiPort.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefb528165ad0cc8bbf186f331e60fbfa5d50f18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
