# isMultiplicative_eulerProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27326b9db3be3a0c673c1ffe87a941125a4c633d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9d28c0c-d6f8-8507-6e3c-24a15fd44eb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3fdafb1-e449-4fce-e7fd-dd0b706f83ed",
  "kind": "theorem",
  "lexical_name": "isMultiplicative_eulerProduct",
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
  "slug": "ismultiplicative-eulerproduct--d869426461cb04bc06f5d46d",
  "source": {
    "blob": "27326b9db3be3a0c673c1ffe87a941125a4c633d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/LFunction/Variant45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d869426461cb04bc06f5d46df348c0779c76b3e7f05d51090859f9a66347f84c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LFunction/Variant45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3fdafb1-e449-4fce-e7fd-dd0b706f83ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMultiplicative_eulerProduct (f : ι → ArithmeticFunction R)
    (hf : ∀ i, IsMultiplicative (f i)) : IsMultiplicative (eulerProduct f) := by
  by_cases hf' : Multipliable f
  · have h (s : Finset ι) : (∏ b ∈ s, f b).IsMultiplicative :=
      isMultiplicative_finsetProd f s fun i a ↦ hf i
    have key := tendsto_iff.mp hf'.hasProd
    refine (forall_and.mp h).imp (fun h ↦ ?_) fun h m n hmn ↦ ?_
    · specialize key 1
      simp_rw [h] at key
      rwa [eventually_const, eq_comm] at key
    · replace h s : (∏ b ∈ s, f b) (m * n) = (∏ b ∈ s, f b) m * (∏ b ∈ s, f b) n := h s hmn
      have h2 := key (m * n)
      simp_rw [h] at h2
      exact eventually_const.mp (EventuallyEq.trans (.symm h2) (.mul (key m) (key n)))
  · rw [eulerProduct, tprod_eq_one_of_not_multipliable hf']
    exact isMultiplicative_one

/-- Given arithmetic functions `f(q⁻ˢ)` with `q → ∞`, the partial products `∏ i ∈ s, f i` converge
to the Euler product pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LFunction/Variant45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LFunction/Variant45503cde310503b6291d5951bffcce109f2f42f29c435084491f1fee4cd11611.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27326b9db3be3a0c673c1ffe87a941125a4c633d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
