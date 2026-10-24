# finrank_eq_zero_of_not_exists_basis_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ecd21e5b1425448ca7987c2cda16ff06bf71c34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 502,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/503d1cba226d5075ac37f39c256c491327845da025f4b9dd25ac7da0ba7f20d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ae9cf38-2ef3-3d3a-25d6-7a3bcbb8f169",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80236cb2-738a-350e-94cd-6c65102fdec1",
  "kind": "theorem",
  "lexical_name": "finrank_eq_zero_of_not_exists_basis_finset",
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
  "slug": "finrank-eq-zero-of-not-exists-basis-finset--9af1ad54a78aa3fa21bbccef",
  "source": {
    "blob": "4ecd21e5b1425448ca7987c2cda16ff06bf71c34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 502,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant503d1cba226d5075ac37f39c256c491327845da025f4b9dd25ac7da0ba7f20d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9af1ad54a78aa3fa21bbccefc3a1c80173483029a52f2729d001da640db4eb3c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant503d1cba226d5075ac37f39c256c491327845da025f4b9dd25ac7da0ba7f20d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80236cb2-738a-350e-94cd-6c65102fdec1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_eq_zero_of_not_exists_basis_finset (h : ¬∃ s : Finset M, Nonempty (Basis s R M)) :
    finrank R M = 0 :=
  finrank_eq_zero_of_basis_imp_false fun s b => h ⟨s, ⟨b⟩⟩

end FinrankZero

section RankOne

variable [NoZeroSMulDivisors R M] [StrongRankCondition R]

/-- If there is a nonzero vector and every other vector is a multiple of it,
then the module has dimension one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant503d1cba226d5075ac37f39c256c491327845da025f4b9dd25ac7da0ba7f20d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant503d1cba226d5075ac37f39c256c491327845da025f4b9dd25ac7da0ba7f20d1.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ecd21e5b1425448ca7987c2cda16ff06bf71c34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
