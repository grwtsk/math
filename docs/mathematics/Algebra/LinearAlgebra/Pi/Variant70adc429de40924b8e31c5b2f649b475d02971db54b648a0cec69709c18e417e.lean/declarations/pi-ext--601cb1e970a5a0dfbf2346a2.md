# pi_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "afc3f6bbed5f8a9e8cd52922ed8bf2b5618e70f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11b2ce48-3085-cdbc-70b1-300b12da98c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1920331-d572-708c-8d46-66b680c4c866",
  "kind": "theorem",
  "lexical_name": "pi_ext",
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
  "slug": "pi-ext--601cb1e970a5a0dfbf2346a2",
  "source": {
    "blob": "afc3f6bbed5f8a9e8cd52922ed8bf2b5618e70f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 40,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:601cb1e970a5a0dfbf2346a236e575b678a8d2cce9a3693ee79e852517f75151",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1920331-d572-708c-8d46-66b680c4c866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_ext [Finite ι] [∀ i, Finite (κ i)] [∀ i, DecidableEq (κ i)]
    ⦃f g : MultilinearMap R (fun i ↦ Π j : κ i, M i j) N⦄
    (h : ∀ p : Π i, κ i,
      f.compLinearMap (fun i => LinearMap.single R _ (p i)) =
      g.compLinearMap (fun i => LinearMap.single R _ (p i))) : f = g := by
  ext x
  show f (fun i ↦ x i) = g (fun i ↦ x i)
  obtain ⟨i⟩ := nonempty_fintype ι
  have (i) := (nonempty_fintype (κ i)).some
  have := Classical.decEq ι
  rw [funext (fun i ↦ Eq.symm (Finset.univ_sum_single (x i)))]
  simp_rw [MultilinearMap.map_sum_finset]
  congr! 1 with p
  simp_rw [MultilinearMap.ext_iff] at h
  exact h _ _

end Semiring

section piFamily
variable {M : ∀ i, κ i → Type uM} {N : (Π i, κ i) → Type uN}

section Semiring

variable [Semiring R]
variable [∀ i k, AddCommMonoid (M i k)] [∀ p, AddCommMonoid (N p)]
variable [∀ i k, Module R (M i k)] [∀ p, Module R (N p)]

/--
Given a family of indices `κ` and a multilinear map `f p` for each way `p` to select one index from
each family, `piFamily f` maps a family of functions (one for each domain `κ i`) into a function
from each selection of indices (with domain `Π i, κ i`).
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant70adc429de40924b8e31c5b2f649b475d02971db54b648a0cec69709c18e417e.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc3f6bbed5f8a9e8cd52922ed8bf2b5618e70f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
