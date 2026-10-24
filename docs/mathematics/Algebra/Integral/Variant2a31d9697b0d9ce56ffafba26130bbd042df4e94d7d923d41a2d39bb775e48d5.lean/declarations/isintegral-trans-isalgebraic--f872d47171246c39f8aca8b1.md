# IsIntegral.trans_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d783079a5579dfae081fd03c412e3606b782cb01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 307,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72a0927f-53de-8a84-975c-c2d49018057c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:abec19e4-d294-2c1c-a1d6-f91bc89a0dce",
  "kind": "theorem",
  "lexical_name": "IsIntegral.trans_isAlgebraic",
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
  "slug": "isintegral-trans-isalgebraic--f872d47171246c39f8aca8b1",
  "source": {
    "blob": "d783079a5579dfae081fd03c412e3606b782cb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 307,
    "path": "GRWTSK/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f872d47171246c39f8aca8b19372e6d66f24384bf9fc4ea66bb71a8d316afa90",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abec19e4-d294-2c1c-a1d6-f91bc89a0dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 307–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegral.trans_isAlgebraic [Algebra.IsIntegral R S] [alg : Algebra.IsAlgebraic S A] :
    Algebra.IsAlgebraic R A :=
  ⟨fun _ ↦ (alg.1 _).restrictScalars_of_isIntegral _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant2a31d9697b0d9ce56ffafba26130bbd042df4e94d7d923d41a2d39bb775e48d5.lean#L307).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d783079a5579dfae081fd03c412e3606b782cb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
