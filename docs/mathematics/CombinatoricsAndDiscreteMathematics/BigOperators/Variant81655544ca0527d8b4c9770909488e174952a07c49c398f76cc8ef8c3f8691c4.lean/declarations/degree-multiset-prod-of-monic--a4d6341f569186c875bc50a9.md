# degree_multiset_prod_of_monic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5152cb42-bd1f-c528-f6f1-8897e24c06e7",
  "kind": "theorem",
  "lexical_name": "degree_multiset_prod_of_monic",
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
  "slug": "degree-multiset-prod-of-monic--a4d6341f569186c875bc50a9",
  "source": {
    "blob": "c2293cbcd11758f4924d3f3f932dd371b18eb961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 209,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4d6341f569186c875bc50a90727996cd3b1ac438c314c91e3182c0d471e6e07",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5152cb42-bd1f-c528-f6f1-8897e24c06e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degree_multiset_prod_of_monic [Nontrivial R] (h : ∀ f ∈ t, Monic f) :
    t.prod.degree = (t.map degree).sum := by
  have : t.prod ≠ 0 := Monic.ne_zero <| by simpa using monic_multiset_prod_of_monic _ _ h
  rw [degree_eq_natDegree this, natDegree_multiset_prod_of_monic _ h, Nat.cast_multiset_sum,
    Multiset.map_map, Function.comp_def,
    Multiset.map_congr rfl (fun f hf => (degree_eq_natDegree (h f hf).ne_zero).symm)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant81655544ca0527d8b4c9770909488e174952a07c49c398f76cc8ef8c3f8691c4.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2293cbcd11758f4924d3f3f932dd371b18eb961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
