# isGreatest_coe_greatestOfBdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c3e42e3fb5ae3dfd06e7d8c22ea2485016bd7ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:22516f00-0b81-32b4-06b9-d5c6b18979d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15df4ce7-38d3-143d-789b-d7a24bbcc4b4",
  "kind": "lemma",
  "lexical_name": "isGreatest_coe_greatestOfBdd",
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
  "slug": "isgreatest-coe-greatestofbdd--6f44861f7f52aec66d83375d",
  "source": {
    "blob": "5c3e42e3fb5ae3dfd06e7d8c22ea2485016bd7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 96,
    "path": "GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f44861f7f52aec66d83375d68327818df5b6d1408c461ad7798a625a0d690c3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15df4ce7-38d3-143d-789b-d7a24bbcc4b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isGreatest_coe_greatestOfBdd {P : ℤ → Prop} [DecidablePred P] (b : ℤ)
    (Hb : ∀ z : ℤ, P z → z ≤ b) (Hinh : ∃ z : ℤ, P z) :
    IsGreatest {z | P z} (greatestOfBdd b Hb Hinh : ℤ) :=
  (greatestOfBdd b Hb Hinh).2

/--
If `P : ℤ → Prop` is a predicate such that the set `{m : P m}` is bounded above and nonempty,
then this set has the greatest element. This lemma uses classical logic to avoid assumption
`[DecidablePred P]`. See `Int.greatestOfBdd` for a constructive counterpart. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c3e42e3fb5ae3dfd06e7d8c22ea2485016bd7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
