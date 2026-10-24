# prod_image_of_pairwise_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7f353d2-1f9c-1376-d0d2-256d5bc8f7bc",
  "kind": "lemma",
  "lexical_name": "prod_image_of_pairwise_eq_one",
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
  "slug": "prod-image-of-pairwise-eq-one--3235b0e2ec7bd64df3ea44b2",
  "source": {
    "blob": "354a6eb14c150ad834ae953f0c21f023af30ff9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 809,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianteec5f83656c5e0901f241f202bdda975b085e9567b353684f24c5efa118f0df3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3235b0e2ec7bd64df3ea44b28f1c02f2941b840c2d947d4d4dcb258834dfc8b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Varianteec5f83656c5e0901f241f202bdda975b085e9567b353684f24c5efa118f0df3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7f353d2-1f9c-1376-d0d2-256d5bc8f7bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 809–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_image_of_pairwise_eq_one [DecidableEq ι] {f : κ → ι} {g : ι → M} {I : Finset κ}
    (hf : (I : Set κ).Pairwise fun i j ↦ f i = f j → g (f i) = 1) :
    ∏ s ∈ I.image f, g s = ∏ i ∈ I, g (f i) := by
  rw [prod_image']
  exact fun n hnI => (prod_filter_of_pairwise_eq_one hnI hf).symm

/-- A version of `Finset.prod_map` and `Finset.prod_image`, but we do not assume that `f` is
injective. Rather, we assume that the images of `f` are disjoint on `I`, and `g ⊥ = 1`. The
conclusion is the same as in `prod_image`. -/
@[to_additive (attr := simp)
"A version of `Finset.sum_map` and `Finset.sum_image`, but we do not assume that `f` is
injective. Rather, we assume that the images of `f` are disjoint on `I`, and `g ⊥ = 0`. The
conclusion is the same as in `sum_image`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Varianteec5f83656c5e0901f241f202bdda975b085e9567b353684f24c5efa118f0df3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianteec5f83656c5e0901f241f202bdda975b085e9567b353684f24c5efa118f0df3.lean#L809).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `354a6eb14c150ad834ae953f0c21f023af30ff9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
