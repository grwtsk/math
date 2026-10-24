# four_pow_le_two_mul_add_one_mul_centralBinom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9871a71-f672-1f17-a72b-c6945636fbd9",
  "kind": "theorem",
  "lexical_name": "four_pow_le_two_mul_add_one_mul_centralBinom",
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
  "slug": "four-pow-le-two-mul-add-one-mul-centralbinom--d53c0f9e634f13ecd50b5dc7",
  "source": {
    "blob": "e8011966839f8b0d5773967190adfe1fded5ce51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d53c0f9e634f13ecd50b5dc7ba7849c28aa1e08bbdedbdf3abe6527b56d4edd4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9871a71-f672-1f17-a72b-c6945636fbd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_pow_le_two_mul_add_one_mul_centralBinom (n : ℕ) :
    4 ^ n ≤ (2 * n + 1) * centralBinom n := by
  rcases n.eq_zero_or_pos with rfl | hn
  · simp [centralBinom]
  · refine (four_pow_le_two_mul_self_mul_centralBinom n hn).trans ?_
    gcongr
    exact le_add_right (2 * n) 1

@[deprecated four_pow_le_two_mul_add_one_mul_centralBinom (since := "2026-09-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Central/Variant7ce000ee6556641a4ec4363d263f2ab886cddf46ec5e105c43a6c9e3fdc34ac9.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8011966839f8b0d5773967190adfe1fded5ce51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
