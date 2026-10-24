# IsLeftRegular.pow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11a565ad-2717-0b76-a6ef-c431ac38ff97",
  "kind": "theorem",
  "lexical_name": "IsLeftRegular.pow_iff",
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
  "slug": "isleftregular-pow-iff--7d09391876b0032d2e8f8840",
  "source": {
    "blob": "14a8f650836f81aa6d2fefc2f40498c31bce7715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d09391876b0032d2e8f88406f76169f0589b334c94e4597eba4b232473e297d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11a565ad-2717-0b76-a6ef-c431ac38ff97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLeftRegular.pow_iff {n : ℕ} (n0 : 0 < n) : IsLeftRegular (a ^ n) ↔ IsLeftRegular a := by
  refine' ⟨_, IsLeftRegular.pow n⟩
  rw [← Nat.succ_pred_eq_of_pos n0, pow_succ']
  exact IsLeftRegular.of_mul
#align is_left_regular.pow_iff IsLeftRegular.pow_iff

/-- An element `a` is right-regular if and only if a positive power of `a` is right-regular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pow/Variant2d2e4495f0439b6cf77cdf6897a7ba241ab6350c244fef7abf65f3d7da8d3690.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14a8f650836f81aa6d2fefc2f40498c31bce7715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
