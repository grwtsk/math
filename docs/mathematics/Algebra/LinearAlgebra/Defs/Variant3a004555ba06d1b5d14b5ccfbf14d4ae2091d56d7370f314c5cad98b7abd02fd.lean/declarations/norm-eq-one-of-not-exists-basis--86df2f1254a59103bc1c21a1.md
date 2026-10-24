# norm_eq_one_of_not_exists_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cdf5ed50c13c8c8dce5c3b92b15a1b90579e04da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70e3cb04-3600-871e-ff97-a3fb22172669",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b64906e-be61-f97f-05df-de48dc947532",
  "kind": "theorem",
  "lexical_name": "norm_eq_one_of_not_exists_basis",
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
  "slug": "norm-eq-one-of-not-exists-basis--86df2f1254a59103bc1c21a1",
  "source": {
    "blob": "cdf5ed50c13c8c8dce5c3b92b15a1b90579e04da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 67,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86df2f1254a59103bc1c21a15e84fe184729c1ac22b4923a5bb2953292dacc73",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b64906e-be61-f97f-05df-de48dc947532`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_one_of_not_exists_basis (h : ¬∃ s : Finset S, Nonempty (Basis s R S)) (x : S) :
    norm R x = 1 := by rw [norm_apply, LinearMap.det]; split_ifs <;> trivial

variable {R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant3a004555ba06d1b5d14b5ccfbf14d4ae2091d56d7370f314c5cad98b7abd02fd.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf5ed50c13c8c8dce5c3b92b15a1b90579e04da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
