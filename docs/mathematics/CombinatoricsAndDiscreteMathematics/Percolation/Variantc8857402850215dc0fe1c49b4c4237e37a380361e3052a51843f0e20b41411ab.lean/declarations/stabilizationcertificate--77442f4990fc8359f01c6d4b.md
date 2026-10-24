# StabilizationCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d78e586f9f1ddcf9dff48cbfe3b51cc08755a16f64c52a9bbfcb95e7ce7271a8",
  "kind": "structure",
  "lexical_name": "StabilizationCertificate",
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
  "slug": "stabilizationcertificate--77442f4990fc8359f01c6d4b",
  "source": {
    "blob": "4ba7ee95db0cf524150a19b481168f71602b8fb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77442f4990fc8359f01c6d4b1e22343e8dbadb4bd3e306a6858468fbd11e8969",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d78e586f9f1ddcf9dff48cbfe3b51cc08755a16f64c52a9bbfcb95e7ce7271a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StabilizationCertificate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal) where
  terminalStage : Nat
  stable :
    percolate profile initial (terminalStage + 1) =
      percolate profile initial terminalStage
  aboveInitial :
    initial ≤ percolate profile initial terminalStage
  leastClosed :
    ∀ candidate,
      initial ≤ candidate →
      profile.step candidate ≤ candidate →
      percolate profile initial terminalStage ≤ candidate

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Percolation/Variantc8857402850215dc0fe1c49b4c4237e37a380361e3052a51843f0e20b41411ab.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ba7ee95db0cf524150a19b481168f71602b8fb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
