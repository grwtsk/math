# u_int_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0b9d4818ff159efc9cfd66012e9f5a2d560fb041",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b99f4492-5415-2a09-075a-a22b8209f165",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6118316e-aae0-3d50-33bb-2b78f3cc4c0d",
  "kind": "theorem",
  "lexical_name": "u_int_pos",
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
  "slug": "u-int-pos--6391748edffc6e5e42bea21f",
  "source": {
    "blob": "0b9d4818ff159efc9cfd66012e9f5a2d560fb041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 292,
    "path": "GRWTSK/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6391748edffc6e5e42bea21f4cb4eba1e661e6267faa27d79afb9f98bf5b38fb",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6118316e-aae0-3d50-33bb-2b78f3cc4c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem u_int_pos : 0 < ∫ x : E, u x ∂μ := by
  refine' (integral_pos_iff_support_of_nonneg u_nonneg _).mpr _
  · exact (u_continuous E).integrable_of_hasCompactSupport (u_compact_support E)
  · rw [u_support]; exact measure_ball_pos _ _ zero_lt_one
#align exists_cont_diff_bump_base.u_int_pos ExistsContDiffBumpBase.u_int_pos

variable {E}
-- porting note: `W` upper case
set_option linter.uppercaseLean3 false

/-- An auxiliary function to construct partitions of unity on finite-dimensional real vector spaces,
which is smooth, symmetric, with support equal to the ball of radius `D` and integral `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteDimension/Variantb946918c79b629c5482365f3158a3412c5fb5bc612c279d02c714c0e958d1ca8.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9d4818ff159efc9cfd66012e9f5a2d560fb041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
