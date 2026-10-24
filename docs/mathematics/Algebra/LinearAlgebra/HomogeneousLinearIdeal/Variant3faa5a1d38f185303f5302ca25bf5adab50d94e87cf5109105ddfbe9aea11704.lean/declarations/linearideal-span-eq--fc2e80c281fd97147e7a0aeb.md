# linearIdeal_span_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "869cc5e0f3009dbb4de80cedfc86065735b0901f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e8bc0a8-6099-d83f-99ef-6bffd8272ce1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f52b37b-ee0e-95b7-2083-dc32449d88fc",
  "kind": "theorem",
  "lexical_name": "linearIdeal_span_eq",
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
  "slug": "linearideal-span-eq--fc2e80c281fd97147e7a0aeb",
  "source": {
    "blob": "869cc5e0f3009dbb4de80cedfc86065735b0901f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 74,
    "path": "GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc2e80c281fd97147e7a0aeb562f82790d5effd66d87e78b50da383b7e3b19eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f52b37b-ee0e-95b7-2083-dc32449d88fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIdeal_span_eq {α : Type*} (f : V →ₗ[R] A) (v : α → V) :
    Ideal.span (f '' (Submodule.span R (Set.range v) : Set V)) =
      Ideal.span (Set.range fun i ↦ f (v i)) := by
  apply le_antisymm
  · apply Ideal.span_le.mpr
    rintro _ ⟨x, hx, rfl⟩
    change f x ∈ Ideal.span (Set.range fun i ↦ f (v i))
    induction hx using Submodule.span_induction with
    | mem x hx =>
        rcases hx with ⟨i, rfl⟩
        exact Ideal.subset_span ⟨i, rfl⟩
    | zero => simpa only [map_zero] using (Ideal.span (Set.range fun i ↦ f (v i))).zero_mem
    | add x y _ _ hx hy =>
        simpa only [map_add] using (Ideal.span (Set.range fun i ↦ f (v i))).add_mem hx hy
    | smul r x _ hx =>
        simpa only [map_smul, Algebra.smul_def] using
          (Ideal.span (Set.range fun i ↦ f (v i))).mul_mem_left (algebraMap R A r) hx
  · apply Ideal.span_le.mpr
    rintro _ ⟨i, rfl⟩
    exact Ideal.subset_span ⟨v i, Submodule.subset_span ⟨i, rfl⟩, rfl⟩

variable {K : Type*} [Field K]
variable {M : Type*} [AddCommGroup M] [Module K M]
variable {B : Type*} [CommRing B] [Algebra K B]

/-- A linear-relation ideal in a symmetric algebra over a field is prime,
because the symmetric algebra of the quotient vector space is a domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variant3faa5a1d38f185303f5302ca25bf5adab50d94e87cf5109105ddfbe9aea11704.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `869cc5e0f3009dbb4de80cedfc86065735b0901f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
