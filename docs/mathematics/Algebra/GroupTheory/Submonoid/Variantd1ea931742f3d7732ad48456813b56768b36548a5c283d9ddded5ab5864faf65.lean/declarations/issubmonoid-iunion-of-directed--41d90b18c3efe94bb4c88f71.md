# isSubmonoid_iUnion_of_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a42274b4-9900-5728-e16f-52647887529d",
  "kind": "theorem",
  "lexical_name": "isSubmonoid_iUnion_of_directed",
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
  "slug": "issubmonoid-iunion-of-directed--41d90b18c3efe94bb4c88f71",
  "source": {
    "blob": "6ed115176b334e3f03a238e4d3bd6594faf748c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 116,
    "path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41d90b18c3efe94bb4c88f71ea63bb5b6a821e36400279a60806a9213be6eb8c",
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

Occurrence: `result:a42274b4-9900-5728-e16f-52647887529d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSubmonoid_iUnion_of_directed {ι : Type*} [hι : Nonempty ι] {s : ι → Set M}
    (hs : ∀ i, IsSubmonoid (s i)) (Directed : ∀ i j, ∃ k, s i ⊆ s k ∧ s j ⊆ s k) :
    IsSubmonoid (⋃ i, s i) :=
  { one_mem :=
      let ⟨i⟩ := hι
      Set.mem_iUnion.2 ⟨i, (hs i).one_mem⟩
    mul_mem := fun ha hb =>
      let ⟨i, hi⟩ := Set.mem_iUnion.1 ha
      let ⟨j, hj⟩ := Set.mem_iUnion.1 hb
      let ⟨k, hk⟩ := Directed i j
      Set.mem_iUnion.2 ⟨k, (hs k).mul_mem (hk.1 hi) (hk.2 hj)⟩ }
#align is_submonoid_Union_of_directed isSubmonoid_iUnion_of_directed
#align is_add_submonoid_Union_of_directed isAddSubmonoid_iUnion_of_directed

section powers

/-- The set of natural number powers `1, x, x², ...` of an element `x` of a monoid. -/
@[to_additive multiples
      "The set of natural number multiples `0, x, 2x, ...` of an element `x` of an `AddMonoid`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Submonoid/Variantd1ea931742f3d7732ad48456813b56768b36548a5c283d9ddded5ab5864faf65.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ed115176b334e3f03a238e4d3bd6594faf748c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
