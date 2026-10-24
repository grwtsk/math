# actualRieszCriticalRegularization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4c70bec85f277f4e85ee31439baa4dae74d04e60dcb2d478af4941c4810ee50",
  "kind": "def",
  "lexical_name": "actualRieszCriticalRegularization",
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
  "slug": "actualrieszcriticalregularization--1b3911608ee210312737858e",
  "source": {
    "blob": "bb96e6cfcba35d511bce41f8490643dce39c2727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 40,
    "path": "GRWTSK/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant9b82ebc4b125b8f18d5b4fb082d4e84dc694eaa37d99cefd080d48919842c82e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b3911608ee210312737858ef11945758a8dc51255526f5fc9eb2d88efcc3df9",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant9b82ebc4b125b8f18d5b4fb082d4e84dc694eaa37d99cefd080d48919842c82e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4c70bec85f277f4e85ee31439baa4dae74d04e60dcb2d478af4941c4810ee50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualRieszCriticalRegularization : ℂ → ℂ :=
  dslope (dslope actualRieszCriticalNumerator 0) 0

/-- Completed-zeta symmetry fixes its logarithmic derivative at the real midpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant9b82ebc4b125b8f18d5b4fb082d4e84dc694eaa37d99cefd080d48919842c82e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/E521bdc7a629d27eb721551a022b1d3dcc3971d91fc3150c77b9039e8a270541SourceActualRies/Variant9b82ebc4b125b8f18d5b4fb082d4e84dc694eaa37d99cefd080d48919842c82e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb96e6cfcba35d511bce41f8490643dce39c2727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
