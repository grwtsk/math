# LinearIndependent.total_ne_of_not_mem_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc277c7f295fa2fc967631040e7664f9c29100f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 689,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae4478d2-a1a2-3dea-7beb-1be96dc82e45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00da9b15-6576-3a9b-52cb-4256c0e2683e",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.total_ne_of_not_mem_support",
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
  "slug": "linearindependent-total-ne-of-not-mem-support--f81dd1162ad3bb98496c3366",
  "source": {
    "blob": "fc277c7f295fa2fc967631040e7664f9c29100f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 699,
    "line": 689,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81dd1162ad3bb98496c336677edf166f929735d1e734a78e21b7588ad6b9544",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00da9b15-6576-3a9b-52cb-4256c0e2683e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–699.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIndependent.total_ne_of_not_mem_support [Nontrivial R] (hv : LinearIndependent R v)
    {x : ι} (f : ι →₀ R) (h : x ∉ f.support) : Finsupp.total ι M R v f ≠ v x := by
  replace h : x ∉ (f.support : Set ι) := h
  have p := hv.not_mem_span_image h
  intro w
  rw [← w] at p
  rw [Finsupp.span_image_eq_map_total] at p
  simp only [not_exists, not_and, mem_map] at p -- Porting note: `mem_map` isn't currently triggered
  exact p f (f.mem_supported_support R) rfl
#align linear_independent.total_ne_of_not_mem_support LinearIndependent.total_ne_of_not_mem_support

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variantecdb22ee69a0ab9be8279fa4f8165849e90e8604b69f9ce68148cd752ea6f424.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc277c7f295fa2fc967631040e7664f9c29100f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
