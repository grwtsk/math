# actualXiLaplacePoleOneRegularization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed543c2f4a718ab8343d47c0282ba9a8dc755019e4da662556ddd3267d88f16e",
  "kind": "def",
  "lexical_name": "actualXiLaplacePoleOneRegularization",
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
  "slug": "actualxilaplacepoleoneregularization--bd37be0de09fbb54a15cc9c5",
  "source": {
    "blob": "5728611f461a3f76867032adbd2ab5657bb308ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 220,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant9c5059e1891efa68dd10e62dd3fab300050ccf98db662b2a62a8217fa41cab82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd37be0de09fbb54a15cc9c5d037c4f692eb3d95e8adb52852764058a3d2ed4b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant9c5059e1891efa68dd10e62dd3fab300050ccf98db662b2a62a8217fa41cab82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed543c2f4a718ab8343d47c0282ba9a8dc755019e4da662556ddd3267d88f16e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualXiLaplacePoleOneRegularization (z : ℂ) : ℂ :=
  actualXiSevenReturnRegularization (z + 1 / 2) / ((z + 1 / 2) * z)

/-- The complete regularized Laplace expression is analytic at the initial boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant9c5059e1891efa68dd10e62dd3fab300050ccf98db662b2a62a8217fa41cab82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant9c5059e1891efa68dd10e62dd3fab300050ccf98db662b2a62a8217fa41cab82.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5728611f461a3f76867032adbd2ab5657bb308ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
