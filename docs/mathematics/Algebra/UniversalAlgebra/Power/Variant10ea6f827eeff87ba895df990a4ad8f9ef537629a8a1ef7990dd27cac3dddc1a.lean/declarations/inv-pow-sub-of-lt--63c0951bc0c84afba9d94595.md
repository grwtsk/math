# inv_pow_sub_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cd78d36030481cbad0d6423993c24c0104ddf98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9bd81378-788a-4d1c-3dff-ee804291a87a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e65eab05-586a-e562-6251-2640c6ca4033",
  "kind": "theorem",
  "lexical_name": "inv_pow_sub_of_lt",
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
  "slug": "inv-pow-sub-of-lt--63c0951bc0c84afba9d94595",
  "source": {
    "blob": "2cd78d36030481cbad0d6423993c24c0104ddf98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 45,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63c0951bc0c84afba9d945959ed0c030d4f055c7a11015db89d0070771438b31",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e65eab05-586a-e562-6251-2640c6ca4033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_pow_sub_of_lt (a : G₀) (h : n < m) : a⁻¹ ^ (m - n) = (a ^ m)⁻¹ * a ^ n := by
  rw [pow_sub_of_lt a⁻¹ h, inv_pow, inv_pow, inv_inv]
#align inv_pow_sub_of_lt inv_pow_sub_of_lt

end NatPow

end GroupWithZero

section ZPow

open Int

variable {G₀ : Type*} [GroupWithZero G₀]

-- Porting note: removed `attribute [local ematch] le_of_lt`

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Power/Variant10ea6f827eeff87ba895df990a4ad8f9ef537629a8a1ef7990dd27cac3dddc1a.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cd78d36030481cbad0d6423993c24c0104ddf98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
