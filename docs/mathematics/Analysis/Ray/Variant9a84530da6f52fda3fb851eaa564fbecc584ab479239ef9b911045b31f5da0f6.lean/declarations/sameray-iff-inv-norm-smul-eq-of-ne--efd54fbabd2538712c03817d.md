# sameRay_iff_inv_norm_smul_eq_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f01da59497153752db2068310185b8fd74c026a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18017973-c88b-86f5-cd85-3776fa9374ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54cae64b-7cfd-b39e-7dbc-657edb21cd78",
  "kind": "theorem",
  "lexical_name": "sameRay_iff_inv_norm_smul_eq_of_ne",
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
  "slug": "sameray-iff-inv-norm-smul-eq-of-ne--efd54fbabd2538712c03817d",
  "source": {
    "blob": "f01da59497153752db2068310185b8fd74c026a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efd54fbabd2538712c03817d045d3bc3584dd6b3112924bc79e03cf626e248a0",
  "verification": {
    "reference": "docs/verification/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54cae64b-7cfd-b39e-7dbc-657edb21cd78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sameRay_iff_inv_norm_smul_eq_of_ne (hx : x ≠ 0) (hy : y ≠ 0) :
    SameRay ℝ x y ↔ ‖x‖⁻¹ • x = ‖y‖⁻¹ • y := by
  rw [inv_smul_eq_iff₀, smul_comm, eq_comm, inv_smul_eq_iff₀, sameRay_iff_norm_smul_eq] <;>
    rwa [norm_ne_zero_iff]

alias ⟨SameRay.inv_norm_smul_eq, _⟩ := sameRay_iff_inv_norm_smul_eq_of_ne

/-- Two vectors `x y` in a real normed space are on the ray if and only if one of them is zero or
the unit vectors `‖x‖⁻¹ • x` and `‖y‖⁻¹ • y` are equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Ray/Variant9a84530da6f52fda3fb851eaa564fbecc584ab479239ef9b911045b31f5da0f6.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f01da59497153752db2068310185b8fd74c026a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
