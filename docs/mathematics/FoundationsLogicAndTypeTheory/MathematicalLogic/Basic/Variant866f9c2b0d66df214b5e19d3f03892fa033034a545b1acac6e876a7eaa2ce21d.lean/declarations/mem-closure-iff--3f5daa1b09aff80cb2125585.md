# mem_closure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78ea3c05a5929e1689791d2353b865926ac15687",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 712,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12ee8c7c-5ecf-e034-9117-04e899a7d35f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3aca11a8-8efa-caee-1a0a-6295a02ab865",
  "kind": "theorem",
  "lexical_name": "mem_closure_iff",
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
  "slug": "mem-closure-iff--3f5daa1b09aff80cb2125585",
  "source": {
    "blob": "78ea3c05a5929e1689791d2353b865926ac15687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 739,
    "line": 712,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f5daa1b09aff80cb21255851728648e82971fb8f924d3eb3dcac788381ab4e5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aca11a8-8efa-caee-1a0a-6295a02ab865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 712–739.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_iff {s : Set R} {x} :
    x ∈ closure s ↔ x ∈ AddSubgroup.closure (Subsemigroup.closure s : Set R) :=
  ⟨fun h =>
    closure_induction h (fun x hx => AddSubgroup.subset_closure <| Subsemigroup.subset_closure hx)
      (AddSubgroup.zero_mem _) (fun x y hx hy => AddSubgroup.add_mem _ hx hy)
      (fun x hx => AddSubgroup.neg_mem _ hx) fun x y hx hy =>
      AddSubgroup.closure_induction hy
        (fun q hq =>
          AddSubgroup.closure_induction hx
            (fun p hp => AddSubgroup.subset_closure ((Subsemigroup.closure s).mul_mem hp hq))
            (by rw [zero_mul q]; apply AddSubgroup.zero_mem _)
            (fun p₁ p₂ ihp₁ ihp₂ => by rw [add_mul p₁ p₂ q]; apply AddSubgroup.add_mem _ ihp₁ ihp₂)
            fun x hx => by
            have f : -x * q = -(x * q) := by simp
            rw [f]; apply AddSubgroup.neg_mem _ hx)
        (by rw [mul_zero x]; apply AddSubgroup.zero_mem _)
        (fun q₁ q₂ ihq₁ ihq₂ => by rw [mul_add x q₁ q₂]; apply AddSubgroup.add_mem _ ihq₁ ihq₂)
        fun z hz => by
        have f : x * -z = -(x * z) := by simp
        rw [f]; apply AddSubgroup.neg_mem _ hz,
    fun h =>
    AddSubgroup.closure_induction h
      (fun x hx =>
        Subsemigroup.closure_induction hx (fun x hx => subset_closure hx) fun x y hx hy =>
          mul_mem hx hy)
      (zero_mem _) (fun x y hx hy => add_mem hx hy) fun x hx => neg_mem hx⟩

/-- If all elements of `s : Set A` commute pairwise, then `closure s` is a commutative ring.  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant866f9c2b0d66df214b5e19d3f03892fa033034a545b1acac6e876a7eaa2ce21d.lean#L712).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ea3c05a5929e1689791d2353b865926ac15687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
