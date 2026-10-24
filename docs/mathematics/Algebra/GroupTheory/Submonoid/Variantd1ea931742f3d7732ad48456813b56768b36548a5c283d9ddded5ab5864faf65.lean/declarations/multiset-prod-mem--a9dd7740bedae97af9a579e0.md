# multiset_prod_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9d85bff-a1f6-ac5e-31ec-e1ebd98b24b1",
  "kind": "theorem",
  "lexical_name": "multiset_prod_mem",
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
  "slug": "multiset-prod-mem--a9dd7740bedae97af9a579e0",
  "source": {
    "blob": "6ed115176b334e3f03a238e4d3bd6594faf748c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 255,
    "path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9dd7740bedae97af9a579e01a0a0fab4546d75c1b3d7894f2d8b0e8b76b9135",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9d85bff-a1f6-ac5e-31ec-e1ebd98b24b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiset_prod_mem {M} [CommMonoid M] {s : Set M} (hs : IsSubmonoid s) (m : Multiset M) :
    (∀ a ∈ m, a ∈ s) → m.prod ∈ s := by
  refine' Quotient.inductionOn m fun l hl => _
  rw [Multiset.quot_mk_to_coe, Multiset.coe_prod]
  exact list_prod_mem hs hl
#align is_submonoid.multiset_prod_mem IsSubmonoid.multiset_prod_mem
#align is_add_submonoid.multiset_sum_mem IsAddSubmonoid.multiset_sum_mem

/-- The product of elements of a submonoid of a `CommMonoid` indexed by a `Finset` is an element
of the submonoid. -/
@[to_additive
      "The sum of elements of an `AddSubmonoid` of an `AddCommMonoid` indexed by
      a `Finset` is an element of the `AddSubmonoid`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed115176b334e3f03a238e4d3bd6594faf748c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
