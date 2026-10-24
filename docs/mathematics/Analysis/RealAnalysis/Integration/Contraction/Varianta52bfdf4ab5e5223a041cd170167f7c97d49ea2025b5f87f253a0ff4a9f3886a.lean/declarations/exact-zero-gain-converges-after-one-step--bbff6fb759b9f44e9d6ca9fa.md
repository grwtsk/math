# exact_zero_gain_converges_after_one_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f8f1bd9c7264a28d23d3f818c413a719cd2769d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe8176c0-9041-9cf6-7243-ef7e32ccec8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56faa9a2-62c7-ee80-635a-78e392151f86",
  "kind": "theorem",
  "lexical_name": "exact_zero_gain_converges_after_one_step",
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
  "slug": "exact-zero-gain-converges-after-one-step--bbff6fb759b9f44e9d6ca9fa",
  "source": {
    "blob": "9f8f1bd9c7264a28d23d3f818c413a719cd2769d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbff6fb759b9f44e9d6ca9fa7f51dee87bf130e4b35f6bc656f1b7bc81a757e0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56faa9a2-62c7-ee80-635a-78e392151f86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_zero_gain_converges_after_one_step
    (initialDefect : Nat)
    (n : Nat) :
    constantAffineBound 0 0 initialDefect (n + 1) = 0 := by
  induction n with
  | zero => simp
  | succ n inductionHypothesis => simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Contraction/Varianta52bfdf4ab5e5223a041cd170167f7c97d49ea2025b5f87f253a0ff4a9f3886a.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8f1bd9c7264a28d23d3f818c413a719cd2769d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
