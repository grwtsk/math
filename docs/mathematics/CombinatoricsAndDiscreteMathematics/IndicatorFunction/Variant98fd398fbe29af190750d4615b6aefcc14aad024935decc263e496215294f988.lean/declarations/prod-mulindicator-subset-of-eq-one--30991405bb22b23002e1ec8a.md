# prod_mulIndicator_subset_of_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e012b1d-9cc5-ac7b-0472-414689483872",
  "kind": "theorem",
  "lexical_name": "prod_mulIndicator_subset_of_eq_one",
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
  "slug": "prod-mulindicator-subset-of-eq-one--30991405bb22b23002e1ec8a",
  "source": {
    "blob": "0a7667e77700a8454497cf8d9e93f3d7684b2841",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 619,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30991405bb22b23002e1ec8a0f17b50bfa093787f980770c1fe53146b475cf8c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e012b1d-9cc5-ac7b-0472-414689483872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_mulIndicator_subset_of_eq_one [One N] (f : α → N) (g : α → N → M) {s t : Finset α}
    (h : s ⊆ t) (hg : ∀ a, g a 1 = 1) :
    (∏ i in s, g i (f i)) = ∏ i in t, g i (mulIndicator (↑s) f i) := by
  rw [← Finset.prod_subset h _]
  · apply Finset.prod_congr rfl
    intro i hi
    congr
    symm
    -- Porting note: This did not use to need the implicit argument
    exact mulIndicator_of_mem (α := α) hi f
  · refine' fun i _ hn => _
    convert hg i
    -- Porting note: This did not use to need the implicit argument
    exact mulIndicator_of_not_mem (α := α) hn f
#align set.prod_mul_indicator_subset_of_eq_one Set.prod_mulIndicator_subset_of_eq_one
#align set.sum_indicator_subset_of_eq_zero Set.sum_indicator_subset_of_eq_zero

/-- Consider a sum of `g i (f i)` over a `Finset`. Suppose `g` is a
function such as multiplication, which maps a second argument of 0 to
0.  (A typical use case would be a weighted sum of `f i * h i` or `f i • h i`,
where `f` gives the weights that are multiplied by some other
function `h`.)  Then if `f` is replaced by the corresponding indicator
function, the `Finset` may be replaced by a possibly larger `Finset`
without changing the value of the sum. -/
add_decl_doc Set.sum_indicator_subset_of_eq_zero

/-- Taking the product of an indicator function over a possibly larger `Finset` is the same as
taking the original function over the original `Finset`. -/
@[to_additive
      "Summing an indicator function over a possibly larger `Finset` is the same as summing
      the original function over the original `finset`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IndicatorFunction/Variant98fd398fbe29af190750d4615b6aefcc14aad024935decc263e496215294f988.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7667e77700a8454497cf8d9e93f3d7684b2841` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
