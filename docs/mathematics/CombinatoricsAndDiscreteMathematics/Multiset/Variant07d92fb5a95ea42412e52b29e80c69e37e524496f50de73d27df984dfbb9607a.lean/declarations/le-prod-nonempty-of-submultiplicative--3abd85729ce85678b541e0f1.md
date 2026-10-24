# le_prod_nonempty_of_submultiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18803d28-95ce-86bc-6adf-38d3f5dc54ed",
  "kind": "lemma",
  "lexical_name": "le_prod_nonempty_of_submultiplicative",
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
  "slug": "le-prod-nonempty-of-submultiplicative--3abd85729ce85678b541e0f1",
  "source": {
    "blob": "ebaffd89acfd3d48a5d45489ba06656b54b49ede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3abd85729ce85678b541e0f168ca8eadc87d71d23067e268a40e17931ba29f29",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18803d28-95ce-86bc-6adf-38d3f5dc54ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_prod_nonempty_of_submultiplicative (f : α → β) (h_mul : ∀ a b, f (a * b) ≤ f a * f b)
    (s : Multiset α) (hs_nonempty : s ≠ ∅) : f s.prod ≤ (s.map f).prod :=
  le_prod_nonempty_of_submultiplicative_on_pred f (fun _ => True) (by simp [h_mul]) (by simp) s
    hs_nonempty (by simp)

end

section OrderedCancelCommMonoid
variable [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α] {s : Multiset ι} {f g : ι → α}

@[to_additive sum_lt_sum]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant07d92fb5a95ea42412e52b29e80c69e37e524496f50de73d27df984dfbb9607a.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebaffd89acfd3d48a5d45489ba06656b54b49ede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
