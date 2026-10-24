# instNormedAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a14904d362929a11f6cc23975c61ee9ae9d587c8014c50e3f6d03b49a4c4e649",
  "kind": "instance",
  "lexical_name": "instNormedAlgebra",
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
  "slug": "instnormedalgebra--0394a4ba13f7f7a93579793d",
  "source": {
    "blob": "a4a163a01b299793de881cb3302f1ccf9494e853",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 805,
    "path": "GRWTSK/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0394a4ba13f7f7a93579793d7a0c54d603a9ba93af362a4b992a65c743b2ff80",
  "verification": {
    "reference": "docs/verification/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a14904d362929a11f6cc23975c61ee9ae9d587c8014c50e3f6d03b49a4c4e649`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 805–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instNormedAlgebra : NormedAlgebra ℂ (CStarMatrix n n A) where
  norm_smul_le r M := by simpa only [norm_def, map_smul] using (toCLM M).opNorm_smul_le r

#adaptation_note /-- 2025-03-29 for lean4#7717 had to add `norm_mul_self_le` field. -/
/-- Matrices with entries in a unital C⋆-algebra form a unital C⋆-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CStarMatrix/Variant8257de46b6ef38883b6562bbae3e2858838836b0914d3bac70a271b5dc10a824.lean#L805).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4a163a01b299793de881cb3302f1ccf9494e853` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
