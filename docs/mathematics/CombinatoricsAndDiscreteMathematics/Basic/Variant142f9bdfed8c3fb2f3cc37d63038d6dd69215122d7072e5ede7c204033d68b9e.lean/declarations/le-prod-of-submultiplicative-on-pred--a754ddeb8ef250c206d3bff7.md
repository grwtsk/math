# le_prod_of_submultiplicative_on_pred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f385628e-4c2d-6401-46c6-4dd2df61ae4e",
  "kind": "theorem",
  "lexical_name": "le_prod_of_submultiplicative_on_pred",
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
  "slug": "le-prod-of-submultiplicative-on-pred--a754ddeb8ef250c206d3bff7",
  "source": {
    "blob": "d52f6f995c74267d819a9bf8ca68c6880815db64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 468,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant142f9bdfed8c3fb2f3cc37d63038d6dd69215122d7072e5ede7c204033d68b9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a754ddeb8ef250c206d3bff7a9c0c5e93eb077111162cad3d32a9c913c26d9cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant142f9bdfed8c3fb2f3cc37d63038d6dd69215122d7072e5ede7c204033d68b9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f385628e-4c2d-6401-46c6-4dd2df61ae4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_prod_of_submultiplicative_on_pred [CommMonoid α] [OrderedCommMonoid β] (f : α → β)
    (p : α → Prop) (h_one : f 1 = 1) (hp_one : p 1)
    (h_mul : ∀ a b, p a → p b → f (a * b) ≤ f a * f b) (hp_mul : ∀ a b, p a → p b → p (a * b))
    (s : Multiset α) (hps : ∀ a, a ∈ s → p a) : f s.prod ≤ (s.map f).prod := by
  revert s
  refine' Multiset.induction _ _
  · simp [le_of_eq h_one]
  intro a s hs hpsa
  have hps : ∀ x, x ∈ s → p x := fun x hx => hpsa x (mem_cons_of_mem hx)
  have hp_prod : p s.prod := prod_induction p s hp_mul hp_one hps
  rw [prod_cons, map_cons, prod_cons]
  exact (h_mul a s.prod (hpsa a (mem_cons_self a s)) hp_prod).trans (mul_le_mul_left' (hs hps) _)
#align multiset.le_prod_of_submultiplicative_on_pred Multiset.le_prod_of_submultiplicative_on_pred
#align multiset.le_sum_of_subadditive_on_pred Multiset.le_sum_of_subadditive_on_pred

@[to_additive le_sum_of_subadditive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant142f9bdfed8c3fb2f3cc37d63038d6dd69215122d7072e5ede7c204033d68b9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant142f9bdfed8c3fb2f3cc37d63038d6dd69215122d7072e5ede7c204033d68b9e.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d52f6f995c74267d819a9bf8ca68c6880815db64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
