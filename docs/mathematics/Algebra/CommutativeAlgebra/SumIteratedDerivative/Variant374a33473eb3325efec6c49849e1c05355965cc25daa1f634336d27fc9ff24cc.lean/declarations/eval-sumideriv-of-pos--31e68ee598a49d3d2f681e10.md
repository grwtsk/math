# eval_sumIDeriv_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b10926ef147184105b435a55d4444f343c388ab8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fe31d75-8dde-ee2c-a586-872c407a35b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a362e636-5856-ec7d-9e05-ab0b830a06f4",
  "kind": "theorem",
  "lexical_name": "eval_sumIDeriv_of_pos",
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
  "slug": "eval-sumideriv-of-pos--31e68ee598a49d3d2f681e10",
  "source": {
    "blob": "b10926ef147184105b435a55d4444f343c388ab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 257,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31e68ee598a49d3d2f681e107a89d626fcf46293d273d3defacb5a24ed997b80",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a362e636-5856-ec7d-9e05-ab0b830a06f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_sumIDeriv_of_pos
    [CommRing R] [Nontrivial R] [NoZeroDivisors R] (p : R[X]) {q : ℕ} (hq : 0 < q) :
    ∃ gp : R[X], gp.natDegree ≤ p.natDegree - q ∧
      ∀ (r : R) {p' : R[X]},
        p = ((X : R[X]) - C r) ^ (q - 1) * p' →
        eval r (sumIDeriv p) = (q - 1)! • p'.eval r + q ! • eval r gp := by
  simpa using aeval_sumIDeriv_of_pos R p hq Function.injective_id

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant374a33473eb3325efec6c49849e1c05355965cc25daa1f634336d27fc9ff24cc.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b10926ef147184105b435a55d4444f343c388ab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
