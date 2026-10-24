# trace_eq_sum_trace_restrict_of_eq_biSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff8f8b3d653a4ae3f88d0b752878994eebb55816",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7fbd772-f0ec-ebdc-bc78-63e03b1dcc6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e999327-61ad-5404-1683-d8214233575d",
  "kind": "lemma",
  "lexical_name": "trace_eq_sum_trace_restrict_of_eq_biSup",
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
  "slug": "trace-eq-sum-trace-restrict-of-eq-bisup--576f30b13718f97e2b6ecf91",
  "source": {
    "blob": "ff8f8b3d653a4ae3f88d0b752878994eebb55816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:576f30b13718f97e2b6ecf91769fb71e0f2b4e5e1c092bf6244bce95fdfb51fc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e999327-61ad-5404-1683-d8214233575d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trace_eq_sum_trace_restrict_of_eq_biSup
    [∀ i, Module.Finite R (N i)] [∀ i, Module.Free R (N i)]
    (s : Finset ι) (h : iSupIndep <| fun i : s ↦ N i)
    {f : Module.End R M} (hf : ∀ i, MapsTo f (N i) (N i))
    (p : Submodule R M) (hp : p = ⨆ i ∈ s, N i)
    (hp' : MapsTo f p p := hp ▸ mapsTo_biSup_of_mapsTo (s : Set ι) hf) :
    trace R p (f.restrict hp') = ∑ i ∈ s, trace R (N i) (f.restrict (hf i)) := by
  classical
  let N' : s → Submodule R p := fun i ↦ (N i).comap p.subtype
  replace h : IsInternal N' := hp ▸ isInternal_biSup_submodule_of_iSupIndep (s : Set ι) h
  have hf' : ∀ i, MapsTo (restrict f hp') (N' i) (N' i) := fun i x hx' ↦ by simpa using hf i hx'
  let e : (i : s) → N' i ≃ₗ[R] N i := fun ⟨i, hi⟩ ↦ (N i).comapSubtypeEquivOfLe (hp ▸ le_biSup N hi)
  have _i1 : ∀ i, Module.Finite R (N' i) := fun i ↦ Module.Finite.equiv (e i).symm
  have _i2 : ∀ i, Module.Free R (N' i) := fun i ↦ Module.Free.of_equiv (e i).symm
  rw [trace_eq_sum_trace_restrict h hf', ← s.sum_coe_sort]
  have : ∀ i : s, f.restrict (hf i) = (e i).conj ((f.restrict hp').restrict (hf' i)) := fun _ ↦ rfl
  simp [this]

end LinearMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantb000f9639e07b4de7a53fe4e179ce333f244ca6fbd9ebc3824c3ad2a2cf19170.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff8f8b3d653a4ae3f88d0b752878994eebb55816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
