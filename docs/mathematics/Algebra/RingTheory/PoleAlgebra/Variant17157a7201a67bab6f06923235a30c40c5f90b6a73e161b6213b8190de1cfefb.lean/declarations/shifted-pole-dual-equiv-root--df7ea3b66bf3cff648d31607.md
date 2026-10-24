# shifted_pole_dual_equiv_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ec24c7-501a-cff9-22dd-ed6282ddbfb6",
  "kind": "theorem",
  "lexical_name": "shifted_pole_dual_equiv_root",
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
  "slug": "shifted-pole-dual-equiv-root--df7ea3b66bf3cff648d31607",
  "source": {
    "blob": "3edf29141d6f5209aed678776ee54af197057891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 339,
    "path": "GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df7ea3b66bf3cff648d31607d0e41eab905e61442e53e78e917c4ce8a408a58b",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ec24c7-501a-cff9-22dd-ed6282ddbfb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shifted_pole_dual_equiv_root (r : ℂ) :
    shiftedPoleDualEquiv r (AdjoinRoot.root ((X - C r) ^ 2)) =
      algebraMap ℂ (DualNumber ℂ) r + DualNumber.eps := by
  change shiftedPoleToDual r (AdjoinRoot.root ((X - C r) ^ 2)) = _
  simp [shiftedPoleToDual]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant17157a7201a67bab6f06923235a30c40c5f90b6a73e161b6213b8190de1cfefb.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3edf29141d6f5209aed678776ee54af197057891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
