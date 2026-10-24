# degreesLE_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96ef6790-a90b-4881-2d42-4c18c3267b99",
  "kind": "lemma",
  "lexical_name": "degreesLE_add",
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
  "slug": "degreesle-add--49a194a4bc1c784fcdab5c7f",
  "source": {
    "blob": "bcaa2006c74fd89fc02f2880890a27cbad20f823",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 637,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degrees/Variantf3e457f3c06dde0ecaa0485bb881cb8640685d3898a4b3da2daec0939d34adf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49a194a4bc1c784fcdab5c7f12b1465f6d63ecabf222f4c7d030b3855b195062",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degrees/Variantf3e457f3c06dde0ecaa0485bb881cb8640685d3898a4b3da2daec0939d34adf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96ef6790-a90b-4881-2d42-4c18c3267b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma degreesLE_add : degreesLE R σ (s + t) = degreesLE R σ s * degreesLE R σ t := by
  classical
  rw [le_antisymm_iff, Submodule.mul_le]
  refine ⟨fun x hx ↦ x.as_sum ▸ sum_mem fun i hi ↦ ?_,
    fun x hx y hy ↦ degrees_mul_le.trans (add_le_add hx hy)⟩
  replace hi : i.toMultiset ≤ s + t := (Finset.le_sup hi).trans hx
  let a := (i.toMultiset - t).toFinsupp
  let b := (i.toMultiset ⊓ t).toFinsupp
  have : a + b = i := Multiset.toFinsupp.symm.injective (by simp [a, b, Multiset.sub_add_inter])
  have ha : a.toMultiset ≤ s := by simpa [a, add_comm (a := t)] using hi
  have hb : b.toMultiset ≤ t := by simp [b, Multiset.inter_le_right]
  rw [show monomial i (x.coeff i) = monomial a (x.coeff i) * monomial b 1 by simp [this]]
  exact Submodule.mul_mem_mul ((degrees_monomial _ _).trans ha) ((degrees_monomial _ _).trans hb)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degrees/Variantf3e457f3c06dde0ecaa0485bb881cb8640685d3898a4b3da2daec0939d34adf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degrees/Variantf3e457f3c06dde0ecaa0485bb881cb8640685d3898a4b3da2daec0939d34adf2.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcaa2006c74fd89fc02f2880890a27cbad20f823` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
