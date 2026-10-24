# sumsq_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "048f47e51a68d48a51e16525a0e10eb6455491bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e52e5e2b29988b32df28d142d70cde0430e6ecf141f0cb68b932525dbced15c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a790db95-502b-0a75-a84c-48cd6b8dd0b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c892661-1a87-f871-8642-10b3f71edc95",
  "kind": "theorem",
  "lexical_name": "sumsq_eq_zero",
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
  "slug": "sumsq-eq-zero--2324638fd65d1be166bcdae4",
  "source": {
    "blob": "048f47e51a68d48a51e16525a0e10eb6455491bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 223,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variante52e5e2b29988b32df28d142d70cde0430e6ecf141f0cb68b932525dbced15c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2324638fd65d1be166bcdae4bb90124b7223798774aec3290307edfbbf64eb5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variante52e5e2b29988b32df28d142d70cde0430e6ecf141f0cb68b932525dbced15c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c892661-1a87-f871-8642-10b3f71edc95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sumsq_eq_zero (x) : ∀ l, sumsq l x = 0 ↔ l.Forall fun a : Poly α => a x = 0
  | [] => eq_self_iff_true _
  | p::ps => by
    rw [List.forall_cons, ← sumsq_eq_zero _ ps]; rw [sumsq]
    exact
      ⟨fun h : p x * p x + sumsq ps x = 0 =>
        have : p x = 0 :=
          eq_zero_of_mul_self_eq_zero <|
            le_antisymm
              (by
                rw [← h]
                have t := add_le_add_left (sumsq_nonneg x ps) (p x * p x)
                rwa [add_zero] at t)
              (mul_self_nonneg _)
        ⟨this, by simpa [this] using h⟩,
      fun ⟨h1, h2⟩ => by rw [add_apply, mul_apply, h1, h2]; rfl⟩

end

/-- Map the index set of variables, replacing `x_i` with `x_(f i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variante52e5e2b29988b32df28d142d70cde0430e6ecf141f0cb68b932525dbced15c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variante52e5e2b29988b32df28d142d70cde0430e6ecf141f0cb68b932525dbced15c9.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `048f47e51a68d48a51e16525a0e10eb6455491bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
