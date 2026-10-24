# deriv_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5da2e4bc6a881eb6d80a6a8937e2ddffbc57d0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:31c7b480-7e93-996b-a753-d59668258f08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc0ff0e6-fd12-0c15-5369-0d6909c51d24",
  "kind": "theorem",
  "lexical_name": "deriv_square",
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
  "slug": "deriv-square--6d4f93dea7e4e34a8291291f",
  "source": {
    "blob": "f5da2e4bc6a881eb6d80a6a8937e2ddffbc57d0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 27,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variant24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d4f93dea7e4e34a8291291fe2f22f5fc11cfe83889b4821b5f8623cd87f45b9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variant24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc0ff0e6-fd12-0c15-5369-0d6909c51d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_square (u : ℂ) : deriv (fun z : ℂ => z ^ 2) u = 2 * u := by
  simp [show deriv (fun z : ℂ => z ^ 2) u = 2 * u ^ (2 - 1) * 1 from
    ((hasDerivAt_id u).pow 2).deriv]

/-- Composition with `u ↦ u^2` preserves analytic/meromorphic multiplicity
away from the ramification point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variant24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variant24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5da2e4bc6a881eb6d80a6a8937e2ddffbc57d0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
