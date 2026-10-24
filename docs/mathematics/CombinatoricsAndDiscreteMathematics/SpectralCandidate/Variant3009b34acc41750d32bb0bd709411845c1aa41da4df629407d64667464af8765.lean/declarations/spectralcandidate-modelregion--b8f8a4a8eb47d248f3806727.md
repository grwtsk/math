# SpectralCandidate.modelRegion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51c5dc7dee74332853d2d7c6af679820f880dfd443a0d674494631b454cdaa89",
  "kind": "def",
  "lexical_name": "SpectralCandidate.modelRegion",
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
  "slug": "spectralcandidate-modelregion--b8f8a4a8eb47d248f3806727",
  "source": {
    "blob": "ebd06574b7e96e98b798ba40b83635216df32f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8f8a4a8eb47d248f38067279114114c954994caab4426b7209009612fd9d177",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51c5dc7dee74332853d2d7c6af679820f880dfd443a0d674494631b454cdaa89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SpectralCandidate.modelRegion
    (candidate : SpectralCandidate) :
    Set ℂ :=
  {z |
    z.re = (1 : ℝ) / 2 ∧
      candidate.ordinateInterval.Contains z.im}

/--
Analytic-zero authority is deliberately uninhabited for a bare proposal.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd06574b7e96e98b798ba40b83635216df32f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
