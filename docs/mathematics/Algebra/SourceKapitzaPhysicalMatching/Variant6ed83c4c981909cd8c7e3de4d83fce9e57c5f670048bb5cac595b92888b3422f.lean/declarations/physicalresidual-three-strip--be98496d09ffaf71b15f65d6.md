# physicalResidual_three_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d874eb8e-6321-278e-e318-377e56c24f60",
  "kind": "theorem",
  "lexical_name": "physicalResidual_three_strip",
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
  "slug": "physicalresidual-three-strip--be98496d09ffaf71b15f65d6",
  "source": {
    "blob": "69ad2156609a01a2f15c57f3f5786cd070e30f9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 98,
    "path": "GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be98496d09ffaf71b15f65d6dcdc51eb3cf3417ffc241f36bbe02af7ee76a755",
  "verification": {
    "reference": "docs/verification/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d874eb8e-6321-278e-e318-377e56c24f60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalResidual_three_strip (A : ℝ) (D B : ℕ)
    (hD : 2 ≤ D) (hDB : D ≤ B) (hBU : B ≤ ⌊Real.exp (2 * A)⌋₊ / 5) :
    physicalResidual A = head A D + middle A D B +
      top A B (⌊Real.exp (2 * A)⌋₊ / 5) :=
  three_strip_identity _ D B _ hD hDB hBU

/-- Every source atom beyond the physical closed cutoff vanishes discretely. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variant6ed83c4c981909cd8c7e3de4d83fce9e57c5f670048bb5cac595b92888b3422f.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69ad2156609a01a2f15c57f3f5786cd070e30f9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
