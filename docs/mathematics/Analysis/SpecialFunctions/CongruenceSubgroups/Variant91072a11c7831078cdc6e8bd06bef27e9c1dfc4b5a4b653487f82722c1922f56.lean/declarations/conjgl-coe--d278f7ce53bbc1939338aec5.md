# conjGL_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84e90e46cf3976afed65352dd9329ade01056a2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21668852-6814-8958-3df4-86308691f2d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0304891-e92f-cce8-9984-b5999c549db1",
  "kind": "lemma",
  "lexical_name": "conjGL_coe",
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
  "slug": "conjgl-coe--d278f7ce53bbc1939338aec5",
  "source": {
    "blob": "84e90e46cf3976afed65352dd9329ade01056a2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 230,
    "path": "GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d278f7ce53bbc1939338aec5dbce3fb7c549a53889f73ef2f5d9d63d84fb04a9",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0304891-e92f-cce8-9984-b5999c549db1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma conjGL_coe (Γ : Subgroup SL(2, ℤ)) (g : SL(2, ℤ)) :
    conjGL Γ g = (toConjAct g⁻¹) • Γ := by
  ext x
  simp_rw [mem_conjGL, ← map_inv, ← map_mul, toGL_injective.eq_iff, map_intCast_injective.eq_iff,
    exists_eq_right, toConjAct_inv, Subgroup.mem_inv_pointwise_smul_iff, toConjAct_smul]

@[deprecated (since := "2025-05-15")] alias conjGLPos := conjGL
@[deprecated (since := "2025-05-15")] alias conjGLPos_coe := conjGL_coe
@[deprecated (since := "2025-05-15")] alias mem_conjGLPos := mem_conjGL
@[deprecated (since := "2025-05-15")] alias mem_conjGLPos' := mem_conjGL'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CongruenceSubgroups/Variant91072a11c7831078cdc6e8bd06bef27e9c1dfc4b5a4b653487f82722c1922f56.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e90e46cf3976afed65352dd9329ade01056a2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
