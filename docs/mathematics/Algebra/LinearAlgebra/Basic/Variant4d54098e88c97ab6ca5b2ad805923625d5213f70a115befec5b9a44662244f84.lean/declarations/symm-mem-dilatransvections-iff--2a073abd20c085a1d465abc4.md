# symm_mem_dilatransvections_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b605b2e2057e1a7db1edbabbbb4e8f971572c314",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0791771-2cf0-b63a-85c6-c407fd750d82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1c9a13e-eb9c-58de-c306-fce011232e01",
  "kind": "theorem",
  "lexical_name": "symm_mem_dilatransvections_iff",
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
  "slug": "symm-mem-dilatransvections-iff--2a073abd20c085a1d465abc4",
  "source": {
    "blob": "b605b2e2057e1a7db1edbabbbb4e8f971572c314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a073abd20c085a1d465abc496d5e7b5ae041628b8b44534bbf00b9b51bec557",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1c9a13e-eb9c-58de-c306-fce011232e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_mem_dilatransvections_iff {e : V ≃ₗ[R] V} :
    e.symm ∈ dilatransvections R V ↔ e ∈ dilatransvections R V := by
  suffices ∀ e ∈ dilatransvections R V, e.symm ∈ dilatransvections R V from
    ⟨by simpa using this e.symm, this e⟩
  rintro e ⟨f, v, he⟩
  use f, - e.symm v
  ext x
  suffices x = e x - f x • v by
    simpa [LinearMap.transvection.apply, ← sub_eq_add_neg, symm_apply_eq]
  rw [eq_comm, sub_eq_iff_eq_add, ← coe_coe, he, LinearMap.transvection.apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant4d54098e88c97ab6ca5b2ad805923625d5213f70a115befec5b9a44662244f84.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b605b2e2057e1a7db1edbabbbb4e8f971572c314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
