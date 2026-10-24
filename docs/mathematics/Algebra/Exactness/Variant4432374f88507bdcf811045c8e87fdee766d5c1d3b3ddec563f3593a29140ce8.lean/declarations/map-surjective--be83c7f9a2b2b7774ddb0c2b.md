# map_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "669174773d5962bcafa3dc45e701054efeb360b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7142726d-aba3-7ed8-0402-4e39543432f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd2e2df9-b90c-caed-a478-a85177d6e767",
  "kind": "theorem",
  "lexical_name": "map_surjective",
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
  "slug": "map-surjective--be83c7f9a2b2b7774ddb0c2b",
  "source": {
    "blob": "669174773d5962bcafa3dc45e701054efeb360b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 68,
    "path": "GRWTSK/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be83c7f9a2b2b7774ddb0c2b8de1d1ce52e179c0a177fdbfd712eb7457454fdc",
  "verification": {
    "reference": "docs/verification/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd2e2df9-b90c-caed-a478-a85177d6e767`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_surjective (hf : Function.Surjective f) : Function.Surjective (map I f) := fun y ↦ by
  apply AdicCompletion.induction_on I N y (fun b ↦ ?_)
  let a := mapPreimage hf b
  refine ⟨AdicCompletion.mk I M (AdicCauchySequence.mk I M (fun n ↦ (a n : M)) ?_), ?_⟩
  · refine fun n ↦ SModEq.symm ?_
    simp only [SModEq.symm, SModEq, mapPreimage, Submodule.Quotient.mk_sub,
      sub_eq_self, Submodule.Quotient.mk_eq_zero, SetLike.coe_mem, a]
  · exact _root_.AdicCompletion.ext fun n ↦ congrArg _ ((a n).property)

end Surjectivity

variable {M : Type u} [AddCommGroup M] [Module R M]
variable {N : Type u} [AddCommGroup N] [Module R N]
variable {P : Type u} [AddCommGroup P] [Module R P]

section Injectivity

variable [IsNoetherianRing R] [Module.Finite R N] (I)

open LinearMap

/-- Adic completion preserves injectivity of finite modules over a Noetherian ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exactness/Variant4432374f88507bdcf811045c8e87fdee766d5c1d3b3ddec563f3593a29140ce8.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `669174773d5962bcafa3dc45e701054efeb360b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
