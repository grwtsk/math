# eq_span_singleton_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "605c85954ec81f5b2e229329727572aa78f84ff6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/85/85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bed26fa-63a2-23fe-b107-d845f26e8485",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1778db8-83a6-8b91-bfcc-add1297dfdde",
  "kind": "theorem",
  "lexical_name": "eq_span_singleton_of_surjective",
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
  "slug": "eq-span-singleton-of-surjective--89b62b1dc626a8b25df380bb",
  "source": {
    "blob": "605c85954ec81f5b2e229329727572aa78f84ff6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 462,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89b62b1dc626a8b25df380bb87338b14f878a35bab711ab73f20fd99bbb45298",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1778db8-83a6-8b91-bfcc-add1297dfdde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_span_singleton_of_surjective {s : Submodule R M}
    {f : R →ₗ[R] s} (hf : Surjective f) : s = span R {(f 1 : M)} := by
  refine le_antisymm (fun x hx ↦ mem_span_singleton.mpr ?_)
    (span_le.mpr <| by rintro _ rfl; exact (f 1).2)
  have ⟨r, eq⟩ := hf ⟨x, hx⟩
  exact ⟨r, by rw [← coe_smul, ← map_smul, smul_eq_mul, mul_one, eq]⟩

variable (R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant85ab3958143d9d498abcc3dc17b63cb585602e812039c5af89b7be98d78532c8.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `605c85954ec81f5b2e229329727572aa78f84ff6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
