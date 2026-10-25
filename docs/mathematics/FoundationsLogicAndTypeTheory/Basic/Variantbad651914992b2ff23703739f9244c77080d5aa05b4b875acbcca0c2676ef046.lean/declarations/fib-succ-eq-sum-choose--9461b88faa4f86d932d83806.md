# fib_succ_eq_sum_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b352c138-8ce5-e411-5722-baa96a41a83e",
  "kind": "theorem",
  "lexical_name": "fib_succ_eq_sum_choose",
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
  "slug": "fib-succ-eq-sum-choose--9461b88faa4f86d932d83806",
  "source": {
    "blob": "1574b4daccb202f4f4636b3d382d9d3da2199b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 255,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantbad651914992b2ff23703739f9244c77080d5aa05b4b875acbcca0c2676ef046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9461b88faa4f86d932d83806a9d258c6ac9d10043855872f749715b907b7378f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variantbad651914992b2ff23703739f9244c77080d5aa05b4b875acbcca0c2676ef046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b352c138-8ce5-e411-5722-baa96a41a83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fib_succ_eq_sum_choose :
    ∀ n : ℕ, fib (n + 1) = ∑ p ∈ Finset.antidiagonal n, choose p.1 p.2 :=
  twoStepInduction rfl rfl fun n h1 h2 => by
    rw [fib_add_two, h1, h2, Finset.Nat.antidiagonal_succ_succ', Finset.Nat.antidiagonal_succ']
    simp [choose_succ_succ, Finset.sum_add_distrib, add_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variantbad651914992b2ff23703739f9244c77080d5aa05b4b875acbcca0c2676ef046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantbad651914992b2ff23703739f9244c77080d5aa05b4b875acbcca0c2676ef046.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1574b4daccb202f4f4636b3d382d9d3da2199b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
