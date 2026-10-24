# LinearIndependent.linearCombination_ne_of_notMem_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5a2a57a-2153-2712-9650-ea003ed54671",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.linearCombination_ne_of_notMem_support",
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
  "slug": "linearindependent-linearcombination-ne-of-notmem-support--8b9a3642f24473c5598f8b72",
  "source": {
    "blob": "b64fe65ed1a80c8f20f325d1f111aead2b3acc5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 280,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b9a3642f24473c5598f8b72d250f3812611894dbd9d3ac5572ba52e48cddc9d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5a2a57a-2153-2712-9650-ea003ed54671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIndependent.linearCombination_ne_of_notMem_support [Nontrivial R]
    (hv : LinearIndependent R v) {x : ι} (f : ι →₀ R) (h : x ∉ f.support) :
    f.linearCombination R v ≠ v x := by
  replace h : x ∉ (f.support : Set ι) := h
  intro w
  have p : ∀ x ∈ Finsupp.supported R R f.support,
    Finsupp.linearCombination R v x ≠ f.linearCombination R v := by
    simpa [← w, Finsupp.span_image_eq_map_linearCombination] using hv.notMem_span_image h
  exact p f (f.mem_supported_support R) rfl

@[deprecated (since := "2025-05-23")]
alias LinearIndependent.linearCombination_ne_of_not_mem_support :=
  LinearIndependent.linearCombination_ne_of_notMem_support

end Subtype

section union

open LinearMap Finsupp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantad42ec2aae2f09f3bad5dbc4f6b9e4a0cbe3570f8d86cb0e5a42cd63b14dc3c3.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b64fe65ed1a80c8f20f325d1f111aead2b3acc5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
