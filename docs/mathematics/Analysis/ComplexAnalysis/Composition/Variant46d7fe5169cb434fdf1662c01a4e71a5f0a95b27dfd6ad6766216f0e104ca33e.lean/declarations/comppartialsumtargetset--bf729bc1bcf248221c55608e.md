# compPartialSumTargetSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:824b59b000436380b559339519c871b8623870427350c0a60d8b0ba45ab9326c",
  "kind": "def",
  "lexical_name": "compPartialSumTargetSet",
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
  "slug": "comppartialsumtargetset--bf729bc1bcf248221c55608e",
  "source": {
    "blob": "539448fec4e14ce543b9f5e5d56e773329b4f6d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 578,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf729bc1bcf248221c55608e26116c566d0f5573213c1d3d60aa6c8d6eacd037",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:824b59b000436380b559339519c871b8623870427350c0a60d8b0ba45ab9326c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compPartialSumTargetSet (m M N : ℕ) : Set (Σ n, Composition n) :=
  {i | m ≤ i.2.length ∧ i.2.length < M ∧ ∀ j : Fin i.2.length, i.2.blocksFun j < N}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `539448fec4e14ce543b9f5e5d56e773329b4f6d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
