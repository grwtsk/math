# PFOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a23ed16134ffe95272aee1a0ead18819173acb0aa06a2b7a3eef6e713ab891f8",
  "kind": "def",
  "lexical_name": "PFOrder",
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
  "slug": "pforder--1de4edd560e11d6e848ae2d2",
  "source": {
    "blob": "0de3b8eb83e5a6b6d7be3206e7abc96de43768ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1de4edd560e11d6e848ae2d2a8c6dbfdd8da91e0ad78fb44eb5c116040af9b45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a23ed16134ffe95272aee1a0ead18819173acb0aa06a2b7a3eef6e713ab891f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PFOrder (R : ℕ) (a : ℕ → ℝ) : Prop :=
  ∀ k : ℕ, k ≤ R → ∀ r c : Fin k ↪o ℕ, 0 ≤ minor a r c

/-- The finite-matrix version has the same order bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de3b8eb83e5a6b6d7be3206e7abc96de43768ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
