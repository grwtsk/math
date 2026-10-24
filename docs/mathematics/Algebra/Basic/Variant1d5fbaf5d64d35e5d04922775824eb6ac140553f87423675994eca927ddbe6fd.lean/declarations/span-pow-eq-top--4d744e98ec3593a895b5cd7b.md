# span_pow_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:813a30d8-d98d-80f1-4be8-65b4c4511baf",
  "kind": "theorem",
  "lexical_name": "span_pow_eq_top",
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
  "slug": "span-pow-eq-top--4d744e98ec3593a895b5cd7b",
  "source": {
    "blob": "3b7a89b82957cff987544a646c5c92bccdf41159",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 169,
    "path": "GRWTSK/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d744e98ec3593a895b5cd7beb9e1d5ebc6c84c4ccfb8e5753359b892d9fbc1e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:813a30d8-d98d-80f1-4be8-65b4c4511baf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_pow_eq_top (s : Set α) (hs : span s = ⊤) (n : ℕ) :
    span ((fun (x : α) => x ^ n) '' s) = ⊤ := by
  rw [eq_top_iff_one]
  rcases n with - | n
  · obtain rfl | ⟨x, hx⟩ := eq_empty_or_nonempty s
    · rw [Set.image_empty, hs]
      trivial
    · exact subset_span ⟨_, hx, pow_zero _⟩
  rw [eq_top_iff_one, span, Finsupp.mem_span_iff_linearCombination] at hs
  rcases hs with ⟨f, hf⟩
  simp only [Finsupp.linearCombination, Finsupp.coe_lsum, Finsupp.sum, LinearMap.coe_smulRight,
    LinearMap.id_coe, id_eq, smul_eq_mul] at hf
  have := sum_pow_mem_span_pow f.support (fun a => f a * a) n
  rw [hf, one_pow] at this
  refine span_le.mpr ?_ this
  rintro _ hx
  simp_rw [Set.mem_image] at hx
  rcases hx with ⟨x, _, rfl⟩
  have : span ({(x : α) ^ (n + 1)} : Set α) ≤ span ((fun x : α => x ^ (n + 1)) '' s) := by
    rw [span_le, Set.singleton_subset_iff]
    exact subset_span ⟨x, x.prop, rfl⟩
  refine this ?_
  rw [mul_pow, mem_span_singleton]
  exact ⟨f x ^ (n + 1), mul_comm _ _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1d5fbaf5d64d35e5d04922775824eb6ac140553f87423675994eca927ddbe6fd.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b7a89b82957cff987544a646c5c92bccdf41159` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
