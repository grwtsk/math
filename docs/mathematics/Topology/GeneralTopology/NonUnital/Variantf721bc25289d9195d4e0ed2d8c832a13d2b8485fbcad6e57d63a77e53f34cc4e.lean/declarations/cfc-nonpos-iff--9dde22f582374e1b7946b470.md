# cfcₙ_nonpos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6488e8af4bb20e2115bde831a4265d2e61157d2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 650,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a34fcc1c-acd7-e7e0-2a24-35c9a5e2524d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ee5cd07-5e1a-0a55-a8b6-112b5550f476",
  "kind": "lemma",
  "lexical_name": "cfcₙ_nonpos_iff",
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
  "slug": "cfc-nonpos-iff--9dde22f582374e1b7946b470",
  "source": {
    "blob": "6488e8af4bb20e2115bde831a4265d2e61157d2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 650,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dde22f582374e1b7946b4706870375296ff895f64d7fbb6adb7ada8d66aaf2b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ee5cd07-5e1a-0a55-a8b6-112b5550f476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 650–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_nonpos_iff (f : R → R) (a : A) (hf : ContinuousOn f (σₙ R a) := by cfc_cont_tac)
    (h0 : f 0 = 0 := by cfc_zero_tac) (ha : p a := by cfc_tac) :
    cfcₙ f a ≤ 0 ↔ ∀ x ∈ σₙ R a, f x ≤ 0 := by
  simp_rw [← neg_nonneg, ← cfcₙ_neg]
  exact cfcₙ_nonneg_iff (fun x ↦ -f x) a

end Ring

end Order

/-! ### `cfcₙHom` on a superset of the quasispectrum -/

section Superset

open ContinuousMapZero

variable {R A : Type*} {p : A → Prop} [CommSemiring R] [Nontrivial R] [StarRing R]
    [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R] [NonUnitalRing A] [StarRing A]
    [TopologicalSpace A] [Module R A] [IsScalarTower R A A] [SMulCommClass R A A]
    [instCFCₙ : NonUnitalContinuousFunctionalCalculus R A p]

/-- The composition of `cfcₙHom` with the natural embedding `C(s, R)₀ → C(quasispectrum R a, R)₀`
whenever `quasispectrum R a ⊆ s`.

This is sometimes necessary in order to consider the same continuous functions applied to multiple
distinct elements, with the added constraint that `cfcₙ` does not suffice. This can occur, for
example, if it is necessary to use uniqueness of this continuous functional calculus. A practical
example can be found in the proof of `CFC.posPart_negPart_unique`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variantf721bc25289d9195d4e0ed2d8c832a13d2b8485fbcad6e57d63a77e53f34cc4e.lean#L650).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6488e8af4bb20e2115bde831a4265d2e61157d2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
