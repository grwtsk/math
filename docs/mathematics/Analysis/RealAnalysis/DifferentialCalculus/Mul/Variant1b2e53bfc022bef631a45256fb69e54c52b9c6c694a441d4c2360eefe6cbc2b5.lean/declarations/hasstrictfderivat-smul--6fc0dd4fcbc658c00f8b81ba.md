# HasStrictFDerivAt.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48a817846d4db0fe79fce7cb03dd2d63a8cb0818",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b2e53bfc022bef631a45256fb69e54c52b9c6c694a441d4c2360eefe6cbc2b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:759da847-e190-00e8-11ae-9ff26ce6033b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f21ac69a-4e51-ede9-cd62-ed9a08dcaa67",
  "kind": "theorem",
  "lexical_name": "HasStrictFDerivAt.smul",
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
  "slug": "hasstrictfderivat-smul--6fc0dd4fcbc658c00f8b81ba",
  "source": {
    "blob": "48a817846d4db0fe79fce7cb03dd2d63a8cb0818",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 180,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1b2e53bfc022bef631a45256fb69e54c52b9c6c694a441d4c2360eefe6cbc2b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc0dd4fcbc658c00f8b81bafedd5ca352ad6bee840f68dda4c443b531bd7be8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1b2e53bfc022bef631a45256fb69e54c52b9c6c694a441d4c2360eefe6cbc2b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f21ac69a-4e51-ede9-cd62-ed9a08dcaa67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasStrictFDerivAt.smul (hc : HasStrictFDerivAt c c' x) (hf : HasStrictFDerivAt f f' x) :
    HasStrictFDerivAt (fun y => c y • f y) (c x • f' + c'.smulRight (f x)) x :=
  (isBoundedBilinearMap_smul.hasStrictFDerivAt (c x, f x)).comp x <| hc.prod hf
#align has_strict_fderiv_at.smul HasStrictFDerivAt.smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1b2e53bfc022bef631a45256fb69e54c52b9c6c694a441d4c2360eefe6cbc2b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant1b2e53bfc022bef631a45256fb69e54c52b9c6c694a441d4c2360eefe6cbc2b5.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48a817846d4db0fe79fce7cb03dd2d63a8cb0818` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
