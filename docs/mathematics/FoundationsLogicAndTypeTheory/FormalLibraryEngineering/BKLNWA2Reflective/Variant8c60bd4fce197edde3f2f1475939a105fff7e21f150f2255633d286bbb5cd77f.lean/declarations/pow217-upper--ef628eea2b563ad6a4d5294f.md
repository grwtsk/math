# pow217_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22d55a1d-4d21-a5a9-0f4a-21d92d522f56",
  "kind": "theorem",
  "lexical_name": "pow217_upper",
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
  "slug": "pow217-upper--ef628eea2b563ad6a4d5294f",
  "source": {
    "blob": "7a951f62d1abcb4990748d33045f140ff5fff57f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 302,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant8c60bd4fce197edde3f2f1475939a105fff7e21f150f2255633d286bbb5cd77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef628eea2b563ad6a4d5294f5e71032b26952f09f5338ffc6db2c02c5a6cf85b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant8c60bd4fce197edde3f2f1475939a105fff7e21f150f2255633d286bbb5cd77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22d55a1d-4d21-a5a9-0f4a-21d92d522f56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow217_upper :
    (1 + 193571378 / (10:ℝ)^16) * f ((2:ℝ)^(217:ℕ)) ≤ (1.000003748 : ℝ) + (1:ℝ) / 10^8 := by
  have h := alpha_pow_upper_bridge 217 (1000003758/1000000000) (by native_decide)
  calc _ ≤ ↑(1000003758 / 1000000000 : ℚ) := h
    _ ≤ (1.000003748 : ℝ) + (1:ℝ) / 10^8 := by push_cast; norm_num

-- 2^289 (for b=200)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant8c60bd4fce197edde3f2f1475939a105fff7e21f150f2255633d286bbb5cd77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BKLNWA2Reflective/Variant8c60bd4fce197edde3f2f1475939a105fff7e21f150f2255633d286bbb5cd77f.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a951f62d1abcb4990748d33045f140ff5fff57f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
