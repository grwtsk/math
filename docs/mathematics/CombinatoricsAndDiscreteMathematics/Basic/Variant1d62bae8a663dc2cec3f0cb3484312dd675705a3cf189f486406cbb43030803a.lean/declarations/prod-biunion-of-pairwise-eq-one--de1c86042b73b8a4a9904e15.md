# prod_biUnion_of_pairwise_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b514f5e-924c-8b7c-561f-ce8d49b92a8e",
  "kind": "theorem",
  "lexical_name": "prod_biUnion_of_pairwise_eq_one",
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
  "slug": "prod-biunion-of-pairwise-eq-one--de1c86042b73b8a4a9904e15",
  "source": {
    "blob": "f11bde8f5333ce0ac0672c1ae913e7258bde0243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 825,
    "line": 810,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de1c86042b73b8a4a9904e156b24a1f2291fa31c3e33adee966d05b030db37a1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b514f5e-924c-8b7c-561f-ce8d49b92a8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 810–825.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_biUnion_of_pairwise_eq_one [DecidableEq ι] {s : Finset κ} {t : κ → Finset ι}
    (hs : (s : Set κ).Pairwise fun i j ↦ ∀ k ∈ t i ∩ t j, f k = 1) :
    ∏ x ∈ s.biUnion t, f x = ∏ x ∈ s, ∏ i ∈ t x, f i := by
  classical
  let t' k := (t k).filter (fun i ↦ f i ≠ 1)
  have : s.biUnion t' = (s.biUnion t).filter (fun i ↦ f i ≠ 1) := by grind
  rw [← prod_filter_ne_one, ← this, prod_biUnion]
  swap
  · intro i hi j hj hij a hai haj k hk
    have hki : k ∈ t' i := hai hk
    have hkj : k ∈ t' j := haj hk
    simp only [ne_eq, mem_filter, t'] at hki hkj
    exact (hki.2 (hs hi hj hij k (by grind))).elim
  exact Finset.prod_congr rfl (fun i hi ↦ prod_filter_ne_one (t i))

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1d62bae8a663dc2cec3f0cb3484312dd675705a3cf189f486406cbb43030803a.lean#L810).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f11bde8f5333ce0ac0672c1ae913e7258bde0243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
