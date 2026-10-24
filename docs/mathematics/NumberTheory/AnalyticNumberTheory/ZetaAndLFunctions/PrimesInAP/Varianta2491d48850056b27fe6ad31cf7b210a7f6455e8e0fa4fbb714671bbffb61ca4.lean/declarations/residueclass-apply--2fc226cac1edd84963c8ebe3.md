# residueClass_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a47f08371abfb838979363184bcdf36841335128",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6550cc5b-1328-326d-24b2-24967122dd6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2529abc-d804-06fb-c849-cbdfbdb0ea3c",
  "kind": "lemma",
  "lexical_name": "residueClass_apply",
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
  "slug": "residueclass-apply--2fc226cac1edd84963c8ebe3",
  "source": {
    "blob": "a47f08371abfb838979363184bcdf36841335128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 217,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fc226cac1edd84963c8ebe3da53b90ea69306ec66ba0e560d877d696636a85d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2529abc-d804-06fb-c849-cbdfbdb0ea3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma residueClass_apply (ha : IsUnit a) (n : ℕ) :
    residueClass a n =
      (q.totient : ℂ)⁻¹ * ∑ χ : DirichletCharacter ℂ q, χ a⁻¹ * χ n * vonMangoldt n := by
  rw [eq_inv_mul_iff_mul_eq₀ <| mod_cast (Nat.totient_pos.mpr q.pos_of_neZero).ne']
  simp +contextual only [residueClass, Set.indicator_apply, Set.mem_ofPred_eq, apply_ite,
    ofReal_zero, mul_zero, ← Finset.sum_mul, sum_char_inv_mul_char_eq ℂ ha n, eq_comm (a := a),
    ite_mul, zero_mul, ↓reduceIte, ite_self]

/-- We can express `ArithmeticFunction.vonMangoldt.residueClass` as a linear combination
of twists of the von Mangoldt function by Dirichlet characters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47f08371abfb838979363184bcdf36841335128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
