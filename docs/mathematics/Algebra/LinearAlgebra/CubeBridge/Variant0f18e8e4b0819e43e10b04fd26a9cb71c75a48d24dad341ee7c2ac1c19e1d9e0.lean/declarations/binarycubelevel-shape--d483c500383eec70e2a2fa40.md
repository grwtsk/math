# binaryCubeLevel_shape

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b5b37bc-b4e2-ab49-b96e-5ea6b017c3e0",
  "kind": "theorem",
  "lexical_name": "binaryCubeLevel_shape",
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
  "slug": "binarycubelevel-shape--d483c500383eec70e2a2fa40",
  "source": {
    "blob": "830fc722493c696b0ae47289eb3716997c9f68cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d483c500383eec70e2a2fa400adef20e93cd12fbe2bcf597de6971b4775d5731",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b5b37bc-b4e2-ab49-b96e-5ea6b017c3e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem binaryCubeLevel_shape
    (M : Carrier.BinaryMatrix)
    (L : BinaryCubeLevel M) :
    M.m = 2 ^ L.level ∧ M.n = 2 ^ L.level :=
  ⟨L.rows_eq, L.cols_eq⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CubeBridge/Variant0f18e8e4b0819e43e10b04fd26a9cb71c75a48d24dad341ee7c2ac1c19e1d9e0.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830fc722493c696b0ae47289eb3716997c9f68cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
