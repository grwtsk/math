# LinearMap.BilinForm.not_injOn_toQuadraticForm_isSymm.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d073178a21c1dc9b1edf48b59f769e0598793d13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71b0fcdd-c32e-2c23-ac28-116e1b721ea7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7080eab4-092d-3a19-3c19-ca2a700390c1",
  "kind": "theorem",
  "lexical_name": "LinearMap.BilinForm.not_injOn_toQuadraticForm_isSymm.",
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
  "slug": "linearmap-bilinform-not-injon-toquadraticform-issymm--caf1b1d4022773171a803e3d",
  "source": {
    "blob": "d073178a21c1dc9b1edf48b59f769e0598793d13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caf1b1d4022773171a803e3d1ac4de761180f7f7ca744e2c36d18b4adf213beb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7080eab4-092d-3a19-3c19-ca2a700390c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.BilinForm.not_injOn_toQuadraticForm_isSymm.{u} :
    ¬∀ {R M : Type u} [CommSemiring R] [AddCommMonoid M], ∀ [Module R M],
      Set.InjOn (toQuadraticMap : BilinForm R M → QuadraticForm R M) {B | B.IsSymm} := by
  intro h
  let F := ULift.{u} (ZMod 2)
  apply B_ne_zero F
  apply h (isSymm_B F) isSymm_zero
  rw [toQuadraticMap_zero, toQuadraticMap_eq_zero]
  exact isAlt_B F

end Counterexample
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuadraticForm/Variantab98d29483a7d7023118c909ba25a98e4ad97dcacb8d8a483f92d5044991fa9e.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d073178a21c1dc9b1edf48b59f769e0598793d13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
