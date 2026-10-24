# completedLFunction_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 341,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6afa56c0-674b-1e93-eba4-c35d488e90a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69ad1dfd-37ef-6c32-ef1b-1f963a9d5ed9",
  "kind": "lemma",
  "lexical_name": "completedLFunction_eq",
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
  "slug": "completedlfunction-eq--dd7aed71ccde82f9b73d27b9",
  "source": {
    "blob": "7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 341,
    "path": "GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7aed71ccde82f9b73d27b96304710d96b738000fbaf5502d1b715596e19d3c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69ad1dfd-37ef-6c32-ef1b-1f963a9d5ed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma completedLFunction_eq (Φ : ZMod N → ℂ) (s : ℂ) :
    completedLFunction Φ s =
      completedLFunction₀ Φ s - N ^ (-s) * Φ 0 / s - N ^ (-s) * (∑ j, Φ j) / (1 - s) := by
  simp only [completedLFunction, completedHurwitzZetaEven_eq, toAddCircle_eq_zero, div_eq_mul_inv,
    ite_mul, one_mul, zero_mul, mul_sub, mul_ite, mul_zero, sum_sub_distrib, Fintype.sum_ite_eq',
    ← sum_mul, completedLFunction₀, mul_assoc]
  abel

/--
The completed L-function of a function `ZMod N → ℂ` is differentiable, with the following
exceptions: at `s = 1` if `∑ j, Φ j ≠ 0`; and at `s = 0` if `Φ 0 ≠ 0`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
