# isProperMap_iff_isClosedMap_ultrafilter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cbb4152d-bd0b-09c2-53a2-88f4e19fcca4",
  "kind": "theorem",
  "lexical_name": "isProperMap_iff_isClosedMap_ultrafilter",
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
  "slug": "ispropermap-iff-isclosedmap-ultrafilter--3f5aa6ea65f1a24333f620e4",
  "source": {
    "blob": "0563b96a95c11bfb0010be423fb2ffc9da2cb0da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f5aa6ea65f1a24333f620e40678fe36f4da73d03633597f3c6a4d1d8a3c6e19",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbb4152d-bd0b-09c2-53a2-88f4e19fcca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isProperMap_iff_isClosedMap_ultrafilter {X : Type u} {Y : Type v} [TopologicalSpace X]
    [TopologicalSpace Y] {f : X → Y} :
    IsProperMap f ↔ Continuous f ∧ IsClosedMap
      (Prod.map f id : X × Ultrafilter X → Y × Ultrafilter X) := by
  -- The proof is basically the same as above.
  constructor <;> intro H
  · exact ⟨H.continuous, H.universally_closed _⟩
  · rw [isProperMap_iff_ultrafilter]
    refine ⟨H.1, fun 𝒰 y hy ↦ ?_⟩
    let F : Set (X × Ultrafilter X) := closure {xℱ | xℱ.2 = pure xℱ.1}
    have := H.2 F isClosed_closure
    have : (y, 𝒰) ∈ Prod.map f id '' F :=
      this.mem_of_tendsto (hy.prodMk_nhds (Ultrafilter.tendsto_pure_self 𝒰))
        (Eventually.of_forall fun x ↦ ⟨⟨x, pure x⟩, subset_closure rfl, rfl⟩)
    rcases this with ⟨⟨x, _⟩, hx, ⟨_, _⟩⟩
    refine ⟨x, rfl, fun U hU ↦ Ultrafilter.compl_notMem_iff.mp fun hUc ↦ ?_⟩
    rw [mem_closure_iff_nhds] at hx
    rcases hx (U ×ˢ {𝒢 | Uᶜ ∈ 𝒢}) (prod_mem_nhds hU ((ultrafilter_isOpen_basic _).mem_nhds hUc))
      with ⟨⟨y, 𝒢⟩, ⟨⟨hy : y ∈ U, hy' : Uᶜ ∈ 𝒢⟩, rfl : 𝒢 = pure y⟩⟩
    exact hy' hy

/-- A map `f : X → Y` is proper if and only if it is continuous and **universally closed**, in the
sense that for any topological space `Z`, the map `Prod.map f id : X × Z → Y × Z` is closed. Note
that `Z` lives in the same universe as `X` here, but `IsProperMap.universally_closed` does not
have this restriction.

This is taken as the definition of properness in
[N. Bourbaki, *General Topology*][bourbaki1966]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniversallyClosed/Varianta60fd510d471c727a944120d9e6d7a08e0b7070e483e2bc38d6d1321b1259ee8.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0563b96a95c11bfb0010be423fb2ffc9da2cb0da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
