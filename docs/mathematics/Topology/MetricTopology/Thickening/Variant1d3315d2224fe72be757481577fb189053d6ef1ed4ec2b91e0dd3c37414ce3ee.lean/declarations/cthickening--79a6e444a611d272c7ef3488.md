# cthickening

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4535d9ad7ed17deef503de22930890ec93c850749e1e64696f39a3b7b0973f03",
  "kind": "def",
  "lexical_name": "cthickening",
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
  "slug": "cthickening--79a6e444a611d272c7ef3488",
  "source": {
    "blob": "a9a9222eff1becde505c2464191589eb0d49ef91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 182,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79a6e444a611d272c7ef348816d77cd46cc4c6cdb763c0d47df301a053e06793",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4535d9ad7ed17deef503de22930890ec93c850749e1e64696f39a3b7b0973f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cthickening (δ : ℝ) (E : Set α) : Set α :=
  { x : α | infEdist x E ≤ ENNReal.ofReal δ }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9a9222eff1becde505c2464191589eb0d49ef91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
