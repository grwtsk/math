# add_self_eq_zero_iff_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e29ffc15e22165fea673f25ce8c171a1cf8c14c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 949,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:219d19bf-969e-2c2b-4873-5b5bed8a5a54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e89e44d1-78e9-68c0-2488-141f64f2f7a5",
  "kind": "theorem",
  "lexical_name": "add_self_eq_zero_iff_eq_zero",
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
  "slug": "add-self-eq-zero-iff-eq-zero--7180058f3218820f3b432e73",
  "source": {
    "blob": "0e29ffc15e22165fea673f25ce8c171a1cf8c14c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 953,
    "line": 949,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7180058f3218820f3b432e7376307085f8cd4c202283f2aa8e9f97a57349afa6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e89e44d1-78e9-68c0-2488-141f64f2f7a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 949–953.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_self_eq_zero_iff_eq_zero {n : ℕ} (hn : Odd n) {a : ZMod n} :
    a + a = 0 ↔ a = 0 := by
  rw [Nat.odd_iff, ← Nat.two_dvd_ne_zero, ← Nat.prime_two.coprime_iff_not_dvd] at hn
  rw [← mul_two, ← @Nat.cast_two (ZMod n), ← ZMod.coe_unitOfCoprime 2 hn, Units.mul_left_eq_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbe19ea6fc95105cf596e1ef3c730e32dffdf9f53b74a17eaab5c668e03d1b0f.lean#L949).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e29ffc15e22165fea673f25ce8c171a1cf8c14c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
