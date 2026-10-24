# mul_inv_cancel_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b0a67667b68b364af8ccb0c3c3e34ea7bbdceb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53e40336-cc40-62f7-140b-a61a79d15801",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1b7108f7-1373-0633-378f-86714d7219ff",
  "kind": "theorem",
  "lexical_name": "mul_inv_cancel_aux",
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
  "slug": "mul-inv-cancel-aux--f0d5bea30eb73c5f1189463b",
  "source": {
    "blob": "7b0a67667b68b364af8ccb0c3c3e34ea7bbdceb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 16,
    "path": "GRWTSK/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0d5bea30eb73c5f1189463bac458251d3dabf546cd0afa3d21b46fc501bb9d2",
  "verification": {
    "reference": "docs/verification/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b7108f7-1373-0633-378f-86714d7219ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mul_inv_cancel_aux (a : ZMod p) (h : a ≠ 0) : a * a⁻¹ = 1 := by
  obtain ⟨k, rfl⟩ := natCast_zmod_surjective a
  apply coe_mul_inv_eq_one
  apply Nat.Coprime.symm
  rwa [Nat.Prime.coprime_iff_not_dvd Fact.out, ← CharP.cast_eq_zero_iff (ZMod p)]

/-- Field structure on `ZMod p` if `p` is prime. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZMod/Variant04fff06083fbc99a889da9563c5390507a8078ee5d56192fb9b208cc6e921740.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b0a67667b68b364af8ccb0c3c3e34ea7bbdceb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
