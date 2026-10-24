# sectorMP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5414b7467764368cbb1815d1d7337021970a2e3de4630cec7efc55a28ffe0bc9",
  "kind": "def",
  "lexical_name": "sectorMP",
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
  "slug": "sectormp--c26d34ada1576ba91ef2de1e",
  "source": {
    "blob": "f28eeb2266a384fe17c9b64ff7d0ebf89c3c48d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant5fa6ae182953ce49c434bda2024459117ec530f4e2dccddde5664f6479fe8822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c26d34ada1576ba91ef2de1e1a6dcff71823bbda83815676c47d47afc85c099c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant5fa6ae182953ce49c434bda2024459117ec530f4e2dccddde5664f6479fe8822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5414b7467764368cbb1815d1d7337021970a2e3de4630cec7efc55a28ffe0bc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sectorMP : V →ₗ[ℝ] V :=
  (involutionMinus C.first).comp (involutionPlus C.second)

/-- The -- sector projector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant5fa6ae182953ce49c434bda2024459117ec530f4e2dccddde5664f6479fe8822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/59899577389cf2505700007979217bc2334f707e2766a9a40315b07c51ac3a05CommutingPrefix3/Variant5fa6ae182953ce49c434bda2024459117ec530f4e2dccddde5664f6479fe8822.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f28eeb2266a384fe17c9b64ff7d0ebf89c3c48d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
