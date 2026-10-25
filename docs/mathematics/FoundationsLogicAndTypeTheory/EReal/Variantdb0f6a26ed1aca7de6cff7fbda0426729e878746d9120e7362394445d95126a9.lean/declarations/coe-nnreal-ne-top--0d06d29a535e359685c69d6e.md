# coe_nnreal_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8b277b9-c659-33eb-cb97-e61c2d11027d",
  "kind": "theorem",
  "lexical_name": "coe_nnreal_ne_top",
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
  "slug": "coe-nnreal-ne-top--0d06d29a535e359685c69d6e",
  "source": {
    "blob": "22162629622a034cab326979ca4012e9d717b37f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 498,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d06d29a535e359685c69d6e909eb9b9090cd0591a4470b731ef33788e5a5d63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8b277b9-c659-33eb-cb97-e61c2d11027d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 498–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_nnreal_ne_top (x : ℝ≥0) : ((x : ℝ≥0∞) : EReal) ≠ ⊤ := coe_ne_top x
#align ereal.coe_nnreal_ne_top EReal.coe_nnreal_ne_top

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean#L498).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22162629622a034cab326979ca4012e9d717b37f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
