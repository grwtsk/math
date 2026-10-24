# jacobiSum_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a2be9d7-e3be-e77a-d2f7-5abb2e543bc1",
  "kind": "lemma",
  "lexical_name": "jacobiSum_eq_aux",
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
  "slug": "jacobisum-eq-aux--c0899e668e70bcf922b2b270",
  "source": {
    "blob": "793bd3d2060d6b433abc66b3c72dac4352af3861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0899e668e70bcf922b2b270731e746d489d1ca88247ba4cefdf9ab755d8bb09",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a2be9d7-e3be-e77a-d2f7-5abb2e543bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma jacobiSum_eq_aux (χ ψ : MulChar F R) :
    jacobiSum χ ψ = ∑ x : F, χ x + ∑ x : F, ψ x - Fintype.card F +
                      ∑ x ∈ univ \ {0, 1}, (χ x - 1) * (ψ (1 - x) - 1) := by
  rw [jacobiSum]
  conv =>
    enter [1, 2, x]
    rw [show ∀ x y : R, x * y = x + y - 1 + (x - 1) * (y - 1) by intros; ring]
  rw [sum_add_distrib, sum_sub_distrib, sum_add_distrib]
  conv => enter [1, 1, 1, 2, 2, x]; rw [← Equiv.subLeft_apply 1]
  rw [(Equiv.subLeft 1).sum_comp ψ, Fintype.card_eq_sum_ones, Nat.cast_sum, Nat.cast_one,
    sum_sdiff_eq_sub (subset_univ _), ← sub_zero (_ - _ + _), add_sub_assoc]
  congr
  rw [sum_pair zero_ne_one, sub_zero, ψ.map_one, χ.map_one, sub_self, mul_zero, zero_mul, add_zero]

end CommRing

section FiniteField

variable {F R : Type*} [Field F] [Fintype F] [CommRing R]

/-- The Jacobi sum of twice the trivial multiplicative character on a finite field `F`
equals `#F-2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant243f8ddda24bb4e0618c7d8f63fddcff9b294c00f3b2e2921a31f832effa9376.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `793bd3d2060d6b433abc66b3c72dac4352af3861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
