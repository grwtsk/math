# finsupp_sum_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "beb82444d8a8496bb4a538a7415ba09b1f7037e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b3521ea-9dd7-23b1-940e-0322d5365e7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:027188a6-d6ce-085c-fad5-79b8e086cde2",
  "kind": "theorem",
  "lexical_name": "finsupp_sum_apply",
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
  "slug": "finsupp-sum-apply--06dcb409d5a41a7545b8a653",
  "source": {
    "blob": "beb82444d8a8496bb4a538a7415ba09b1f7037e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 300,
    "path": "GRWTSK/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06dcb409d5a41a7545b8a6538b831fbf50faa263dde2e657042b107d6fb0e009",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:027188a6-d6ce-085c-fad5-79b8e086cde2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsupp_sum_apply (t : ι →₀ γ) (g : ι → γ → M →ₛₗ[σ₁₂] M₂) (b : M) :
    (t.sum g) b = t.sum fun i d => g i d b :=
  sum_apply _ _ _

end Finsupp

end AddCommMonoid

end LinearMap

namespace Submodule

variable {S : Type*} [Semiring S] [Module R S] [SMulCommClass R R S]

section
variable [SMulCommClass R S S]

/-- If `M` and `N` are submodules of an `R`-algebra `S`, `m : ι → M` is a family of elements, then
there is an `R`-linear map from `ι →₀ N` to `S` which maps `{ n_i }` to the sum of `m_i * n_i`.
This is used in the definition of linearly disjointness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LSum/Variant0fd720dc967646a1bcf3b5a3c3ec0bb2fa46d5d59262606111aafe7aa70ee174.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beb82444d8a8496bb4a538a7415ba09b1f7037e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
