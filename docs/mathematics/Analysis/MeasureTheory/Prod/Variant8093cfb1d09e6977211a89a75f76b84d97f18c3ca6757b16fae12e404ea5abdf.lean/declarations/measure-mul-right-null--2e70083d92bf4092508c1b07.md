# measure_mul_right_null

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b431b4bc0f51b61638f97f50660c7a184d302fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9452bcb-55eb-9939-f294-7a6afb59ec80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:281c6c90-366b-7e08-e87c-14d89477e8d9",
  "kind": "theorem",
  "lexical_name": "measure_mul_right_null",
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
  "slug": "measure-mul-right-null--2e70083d92bf4092508c1b07",
  "source": {
    "blob": "0b431b4bc0f51b61638f97f50660c7a184d302fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 198,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e70083d92bf4092508c1b079bb25da001fd1d8302993fee709b8dd4a863c160",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:281c6c90-366b-7e08-e87c-14d89477e8d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_mul_right_null (y : G) : μ ((fun x => x * y) ⁻¹' s) = 0 ↔ μ s = 0 :=
  calc
    μ ((fun x => x * y) ⁻¹' s) = 0 ↔ μ ((fun x => y⁻¹ * x) ⁻¹' s⁻¹)⁻¹ = 0 := by
      simp_rw [← inv_preimage, preimage_preimage, mul_inv_rev, inv_inv]
    _ ↔ μ s = 0 := by simp only [measure_inv_null μ, measure_preimage_mul]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant8093cfb1d09e6977211a89a75f76b84d97f18c3ca6757b16fae12e404ea5abdf.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b431b4bc0f51b61638f97f50660c7a184d302fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
