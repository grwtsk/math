# seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5de41d141791e578bef626e1a7f4c0d405abc23d3cad0f2487d510a9d7f4703",
  "kind": "def",
  "lexical_name": "seminorm",
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
  "slug": "seminorm--0506e4aa755b08d3ebc2532c",
  "source": {
    "blob": "6358790f10f8e7d38ca7415dfb54bbeb81a18baf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 418,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0506e4aa755b08d3ebc2532c285819c64c06f09fa2e2001e6d85c3c3f25de17b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5de41d141791e578bef626e1a7f4c0d405abc23d3cad0f2487d510a9d7f4703`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def seminorm (k n : ℕ) : Seminorm 𝕜 𝓢(E, F) :=
  Seminorm.ofSMulLE (SchwartzMap.seminormAux k n) (seminormAux_zero k n) (seminormAux_add_le k n)
    (seminormAux_smul_le k n)

/-- The seminorm is given by infimum over all `c` such that the estimate
`‖x‖ ^ k * ‖iteratedFDeriv ℝ n f x‖ ≤ c` holds.

Note that it is usually better to use `seminorm_le_bound` or `le_seminorm` instead of this lemma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4f45f194e4126584da05c37e9e7a97ac450d59bccc3f084df0e9e67c3e2cb2ef.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6358790f10f8e7d38ca7415dfb54bbeb81a18baf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
