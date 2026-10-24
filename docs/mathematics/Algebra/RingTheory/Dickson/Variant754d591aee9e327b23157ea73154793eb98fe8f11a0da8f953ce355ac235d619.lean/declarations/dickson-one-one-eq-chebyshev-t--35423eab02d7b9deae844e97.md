# dickson_one_one_eq_chebyshev_T

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34bff047db3c38d4ab7eb79628f6b70d5cda46f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:011f1780-ee66-4890-6bfb-86043f8ea020",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc8f9799-da87-d2fe-3797-e0c9445cb50e",
  "kind": "theorem",
  "lexical_name": "dickson_one_one_eq_chebyshev_T",
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
  "slug": "dickson-one-one-eq-chebyshev-t--35423eab02d7b9deae844e97",
  "source": {
    "blob": "34bff047db3c38d4ab7eb79628f6b70d5cda46f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 153,
    "path": "GRWTSK/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35423eab02d7b9deae844e9703aee7e235c48028d6d3a19ad895b9bb8c864c5f",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc8f9799-da87-d2fe-3797-e0c9445cb50e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dickson_one_one_eq_chebyshev_T [Invertible (2 : R)] :
    ∀ n, dickson 1 (1 : R) n = 2 * (Chebyshev.T R n).comp (C (⅟ 2) * X)
  | 0 => by
    simp only [Chebyshev.T_zero, mul_one, one_comp, dickson_zero]
    norm_num
  | 1 => by
    rw [dickson_one, Chebyshev.T_one, X_comp, ← mul_assoc, two_mul_C_half_eq_one, one_mul]
  | n + 2 => by
    rw [dickson_add_two, C_1, Chebyshev.T_add_two, dickson_one_one_eq_chebyshev_T (n + 1),
      dickson_one_one_eq_chebyshev_T n, sub_comp, mul_comp, mul_comp, X_comp, ofNat_comp]
    simp_rw [← mul_assoc, Nat.cast_ofNat, two_mul_C_half_eq_one]
    ring
set_option linter.uppercaseLean3 false in
#align polynomial.dickson_one_one_eq_chebyshev_T Polynomial.dickson_one_one_eq_chebyshev_T

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Dickson/Variant754d591aee9e327b23157ea73154793eb98fe8f11a0da8f953ce355ac235d619.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34bff047db3c38d4ab7eb79628f6b70d5cda46f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
