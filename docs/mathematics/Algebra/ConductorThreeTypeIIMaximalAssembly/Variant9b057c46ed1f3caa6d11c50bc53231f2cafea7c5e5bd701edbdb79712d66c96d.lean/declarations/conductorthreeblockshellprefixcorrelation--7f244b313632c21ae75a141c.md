# conductorThreeBlockShellPrefixCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:327d1955379e0ac2d2043b32b038e960a2665cff54dab565a1137a681ac570de",
  "kind": "def",
  "lexical_name": "conductorThreeBlockShellPrefixCorrelation",
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
  "slug": "conductorthreeblockshellprefixcorrelation--7f244b313632c21ae75a141c",
  "source": {
    "blob": "cb8d4f4ad2e902d6419ac038bf159207e5674fbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 66,
    "path": "GRWTSK/Algebra/ConductorThreeTypeIIMaximalAssembly/Variant9b057c46ed1f3caa6d11c50bc53231f2cafea7c5e5bd701edbdb79712d66c96d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f244b313632c21ae75a141c4b91c1c7fd9fb6321fec2c897230cbc1e735a2df",
  "verification": {
    "reference": "docs/verification/Algebra/ConductorThreeTypeIIMaximalAssembly/Variant9b057c46ed1f3caa6d11c50bc53231f2cafea7c5e5bd701edbdb79712d66c96d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:327d1955379e0ac2d2043b32b038e960a2665cff54dab565a1137a681ac570de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conductorThreeBlockShellPrefixCorrelation
    {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) (x : ℕ) : ℂ :=
  bilinearMatrixPairing
    (shellBlockLeftCoefficient B)
    (typeIIShellPrefixMatrix B x)
    (shellBlockRightCoefficient B)

/-- A shell-prefix code reconstructs the block correlation exactly as the
sum of its dyadic product-interval correlations. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConductorThreeTypeIIMaximalAssembly/Variant9b057c46ed1f3caa6d11c50bc53231f2cafea7c5e5bd701edbdb79712d66c96d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConductorThreeTypeIIMaximalAssembly/Variant9b057c46ed1f3caa6d11c50bc53231f2cafea7c5e5bd701edbdb79712d66c96d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb8d4f4ad2e902d6419ac038bf159207e5674fbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
