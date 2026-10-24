# exists_set_linearIndependent_of_lt_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be686d7a739311091392ea7d3b164df50a53b1ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4938af4b-798d-55e5-0dfa-5d2e1cfa737f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6991e4a9-b41c-5fab-9deb-67b95c1c56f9",
  "kind": "theorem",
  "lexical_name": "exists_set_linearIndependent_of_lt_rank",
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
  "slug": "exists-set-linearindependent-of-lt-rank--326f6f4bfb721a3b63911b29",
  "source": {
    "blob": "be686d7a739311091392ea7d3b164df50a53b1ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 121,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:326f6f4bfb721a3b63911b298c9b2dd10dab612124594e8840d867cac89cd314",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6991e4a9-b41c-5fab-9deb-67b95c1c56f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_set_linearIndependent_of_lt_rank {c : Cardinal.{v}} (h : c < Module.rank R M) :
    ∃ s : Set M, #s = c ∧ LinearIndepOn R id s := by
  simpa using exists_set_linearIndependent_of_lt_lift_rank (Cardinal.lift_lt.mpr h)

variable [Nontrivial R]

-- TODO: the forward directions of the next few theorems don't need [Nontrivial R]
/-- Note: if the rank of a module is infinite, it may not contain a linear independent subset
with cardinality equal to the rank, see
https://mathoverflow.net/questions/263020/maximum-cardinal-of-a-set-of-linearly-independent-vectors-in-a-module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant68b87979d198c989ee8fcc762f8118a09aeac068d02823a4ee712e785f88b1fa.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be686d7a739311091392ea7d3b164df50a53b1ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
