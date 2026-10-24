# degree_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ead84ff4f3bbfb8ce8f84989fea9a70bf6bb9e54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d42eb484a3c896fb6de7d48403f6660c0aefc7aca797aefea963574fee122bd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:473459fc-5396-2aed-a49a-7c46094243db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88bedc5b-aab8-31b6-5605-afd20eb3ac94",
  "kind": "theorem",
  "lexical_name": "degree_sum_le",
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
  "slug": "degree-sum-le--0ba4b45cbdf0371b8369f124",
  "source": {
    "blob": "ead84ff4f3bbfb8ce8f84989fea9a70bf6bb9e54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 389,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variantd42eb484a3c896fb6de7d48403f6660c0aefc7aca797aefea963574fee122bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ba4b45cbdf0371b8369f124bfd1e06546ae0d937c1a5a10683ffbc3b9ba68d0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variantd42eb484a3c896fb6de7d48403f6660c0aefc7aca797aefea963574fee122bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88bedc5b-aab8-31b6-5605-afd20eb3ac94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_sum_le (s : Finset ι) (f : ι → R[X]) :
    degree (∑ i ∈ s, f i) ≤ s.sup fun b => degree (f b) :=
  Finset.cons_induction_on s (by simp)
    fun a s has ih =>
    calc
      degree (∑ i ∈ cons a s has, f i) ≤ max (degree (f a)) (degree (∑ i ∈ s, f i)) := by
        rw [Finset.sum_cons]; exact degree_add_le _ _
      _ ≤ _ := by rw [sup_cons]; exact max_le_max le_rfl ih

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variantd42eb484a3c896fb6de7d48403f6660c0aefc7aca797aefea963574fee122bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variantd42eb484a3c896fb6de7d48403f6660c0aefc7aca797aefea963574fee122bd7.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ead84ff4f3bbfb8ce8f84989fea9a70bf6bb9e54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
