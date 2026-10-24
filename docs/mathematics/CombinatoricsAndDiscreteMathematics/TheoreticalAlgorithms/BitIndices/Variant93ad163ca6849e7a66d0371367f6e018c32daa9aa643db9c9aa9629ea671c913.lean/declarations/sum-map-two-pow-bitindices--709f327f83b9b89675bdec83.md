# sum_map_two_pow_bitIndices

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31ee72bf-0e3e-2599-d7ec-5962c5b990a9",
  "kind": "theorem",
  "lexical_name": "sum_map_two_pow_bitIndices",
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
  "slug": "sum-map-two-pow-bitindices--709f327f83b9b89675bdec83",
  "source": {
    "blob": "458439aeb248646218c83c720eff1a55956a00a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant93ad163ca6849e7a66d0371367f6e018c32daa9aa643db9c9aa9629ea671c913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:709f327f83b9b89675bdec831dbe48314763a8a8449e0b790795829df8332d18",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant93ad163ca6849e7a66d0371367f6e018c32daa9aa643db9c9aa9629ea671c913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31ee72bf-0e3e-2599-d7ec-5962c5b990a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem sum_map_two_pow_bitIndices (n : ℕ) :
    (n.bitIndices.map (fun i ↦ 2 ^ i)).sum = n := by
  induction n using binaryRec with
  | zero => simp
  | bit b n hs =>
    have hrw : (fun i ↦ 2 ^ i) ∘ (fun x ↦ x + 1) = fun i ↦ 2 * 2 ^ i := by
      ext i; simp [pow_add, mul_comm]
    cases b
    · simpa [hrw, List.sum_map_mul_left]
    simp [hrw, List.sum_map_mul_left, hs, add_comm (a := 1)]

@[deprecated (since := "2026-05-15")] alias twoPowSum_bitIndices := sum_map_two_pow_bitIndices

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant93ad163ca6849e7a66d0371367f6e018c32daa9aa643db9c9aa9629ea671c913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant93ad163ca6849e7a66d0371367f6e018c32daa9aa643db9c9aa9629ea671c913.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `458439aeb248646218c83c720eff1a55956a00a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
