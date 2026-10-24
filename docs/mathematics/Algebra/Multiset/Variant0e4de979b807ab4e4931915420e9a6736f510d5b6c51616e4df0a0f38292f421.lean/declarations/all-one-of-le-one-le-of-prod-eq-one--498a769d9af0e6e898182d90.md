# all_one_of_le_one_le_of_prod_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc8bcebd-23f6-2976-3400-61c7b8c3162a",
  "kind": "lemma",
  "lexical_name": "all_one_of_le_one_le_of_prod_eq_one",
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
  "slug": "all-one-of-le-one-le-of-prod-eq-one--498a769d9af0e6e898182d90",
  "source": {
    "blob": "3e6abba6ea846b4dbfd1e2caa552bb65cd81c4b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/Algebra/Multiset/Variant0e4de979b807ab4e4931915420e9a6736f510d5b6c51616e4df0a0f38292f421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:498a769d9af0e6e898182d900652ac5dbb95ace44e1c28b97afe502b7d0eafab",
  "verification": {
    "reference": "docs/verification/Algebra/Multiset/Variant0e4de979b807ab4e4931915420e9a6736f510d5b6c51616e4df0a0f38292f421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc8bcebd-23f6-2976-3400-61c7b8c3162a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma all_one_of_le_one_le_of_prod_eq_one {α : Type*} [CommMonoid α]
  [PartialOrder α] [IsOrderedMonoid α] {s : Multiset α} :
    (∀ x ∈ s, (1 : α) ≤ x) → s.prod = 1 → ∀ x ∈ s, x = (1 : α) :=
  Quotient.inductionOn s (by
    simp only [quot_mk_to_coe, prod_coe, mem_coe]
    exact fun l => List.all_one_of_le_one_le_of_prod_eq_one)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiset/Variant0e4de979b807ab4e4931915420e9a6736f510d5b6c51616e4df0a0f38292f421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiset/Variant0e4de979b807ab4e4931915420e9a6736f510d5b6c51616e4df0a0f38292f421.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e6abba6ea846b4dbfd1e2caa552bb65cd81c4b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
