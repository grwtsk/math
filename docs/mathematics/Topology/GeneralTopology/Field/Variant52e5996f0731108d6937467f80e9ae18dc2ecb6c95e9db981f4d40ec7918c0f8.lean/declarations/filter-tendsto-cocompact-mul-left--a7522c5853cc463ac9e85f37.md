# Filter.tendsto_cocompact_mul_left₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b8ef115-51b6-1762-b60c-3661a7aa39ef",
  "kind": "theorem",
  "lexical_name": "Filter.tendsto_cocompact_mul_left₀",
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
  "slug": "filter-tendsto-cocompact-mul-left--a7522c5853cc463ac9e85f37",
  "source": {
    "blob": "bd4ab79bbe279f73202d08c8d0e0c03b4e6eda9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7522c5853cc463ac9e85f3701a3d080a84bb5b6516dcbd605f7cd2536762bc6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b8ef115-51b6-1762-b60c-3661a7aa39ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.tendsto_cocompact_mul_left₀ [SeparatelyContinuousMul K] {a : K} (ha : a ≠ 0) :
    Filter.Tendsto (fun x : K => a * x) (Filter.cocompact K) (Filter.cocompact K) :=
  Filter.tendsto_cocompact_mul_left (inv_mul_cancel₀ ha)

/-- Right-multiplication by a nonzero element of a topological division ring is proper, i.e.,
inverse images of compact sets are compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant52e5996f0731108d6937467f80e9ae18dc2ecb6c95e9db981f4d40ec7918c0f8.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd4ab79bbe279f73202d08c8d0e0c03b4e6eda9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
