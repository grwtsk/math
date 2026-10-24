# norm_exp_sub_one_sub_id_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33157375f0b14cae92abf333dadef21ebbfce756",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3578b916dce6592c54299ca59a69332acfff2ef5b198b179090a4d53ce7a50d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c724c48d-27e1-6302-6a3d-2c85cb324f0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c81d92f3-575c-7eb5-875b-1799013d9cfa",
  "kind": "theorem",
  "lexical_name": "norm_exp_sub_one_sub_id_le",
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
  "slug": "norm-exp-sub-one-sub-id-le--b62545b96ac4f10cec3b72d4",
  "source": {
    "blob": "33157375f0b14cae92abf333dadef21ebbfce756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 447,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Exponential/Variant3578b916dce6592c54299ca59a69332acfff2ef5b198b179090a4d53ce7a50d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b62545b96ac4f10cec3b72d4932ebe99698e73cbfc5c0b6ca136278a02a8a4c7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Exponential/Variant3578b916dce6592c54299ca59a69332acfff2ef5b198b179090a4d53ce7a50d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c81d92f3-575c-7eb5-875b-1799013d9cfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_exp_sub_one_sub_id_le {x : ℂ} (hx : ‖x‖ ≤ 1) : ‖exp x - 1 - x‖ ≤ ‖x‖ ^ 2 :=
  calc
    ‖exp x - 1 - x‖ = ‖exp x - ∑ m ∈ range 2, x ^ m / m.factorial‖ := by
      simp [sub_eq_add_neg, sum_range_succ_comm, add_assoc, Nat.factorial]
    _ ≤ ‖x‖ ^ 2 * ((Nat.succ 2 : ℝ) * (Nat.factorial 2 * (2 : ℕ) : ℝ)⁻¹) :=
      (exp_bound hx (by decide))
    _ ≤ ‖x‖ ^ 2 * 1 := by gcongr; norm_num [Nat.factorial]
    _ = ‖x‖ ^ 2 := by rw [mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Exponential/Variant3578b916dce6592c54299ca59a69332acfff2ef5b198b179090a4d53ce7a50d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Exponential/Variant3578b916dce6592c54299ca59a69332acfff2ef5b198b179090a4d53ce7a50d5.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33157375f0b14cae92abf333dadef21ebbfce756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
