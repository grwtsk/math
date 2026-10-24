# RCLike.sqrt_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f401a831f76d9f059accec22c55da83dbbb1383",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af98007a-58b0-82b2-87af-c51593a0a6d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f40ab40-452e-feb7-e3a1-6b45b327d3a1",
  "kind": "theorem",
  "lexical_name": "RCLike.sqrt_eq_ite",
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
  "slug": "rclike-sqrt-eq-ite--4acff55e93b4a72a010e6707",
  "source": {
    "blob": "3f401a831f76d9f059accec22c55da83dbbb1383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 46,
    "path": "GRWTSK/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4acff55e93b4a72a010e6707ee427fc5b1422a33267e8ec7e4cd00e4c19d12d7",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f40ab40-452e-feb7-e3a1-6b45b327d3a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RCLike.sqrt_eq_ite {a : 𝕜} :
    sqrt a = if h : im (I : 𝕜) = 1 then (complexRingEquiv h).symm (complexRingEquiv h a).sqrt
      else √(re a) := by
  rw [sqrt, eq_comm]
  split_ifs with h
  · simp
  have : (I : 𝕜) = 0 := by grind [I_eq_zero_or_im_I_eq_one]
  simp_all only [Complex.sqrt, im_eq_zero this, map_apply, add_zero, re_to_complex, im_to_complex,
    mul_zero, algebraMap.coe_inj, Complex.cpow_inv_two_re]
  by_cases! ha' : 0 ≤ re a
  · simp [abs_of_nonneg ha', ← two_mul]
  simp [abs_of_nonpos ha'.le, Real.sqrt_eq_zero', ha'.le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f401a831f76d9f059accec22c55da83dbbb1383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
