# eq_on_inv₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d137c2a-2bae-9e9a-52cd-08984514af76",
  "kind": "theorem",
  "lexical_name": "eq_on_inv₀",
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
  "slug": "eq-on-inv--7942ac29d3bac3d528b1e56c",
  "source": {
    "blob": "e83fdf511c3b2bd8daadc2d3dabba984e43a0973",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 231,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7942ac29d3bac3d528b1e56c2a58e31a8803b13ce9e0f3bda7f5be0164206e43",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d137c2a-2bae-9e9a-52cd-08984514af76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_on_inv₀ (f g : F') (h : f a = g a) : f a⁻¹ = g a⁻¹ := by
  rcases eq_or_ne a 0 with (rfl | ha)
  · rw [inv_zero, map_zero, map_zero]
  · exact (IsUnit.mk0 a ha).eq_on_inv f g h
#align eq_on_inv₀ eq_on_inv₀

end MonoidWithZero

section GroupWithZero

variable [GroupWithZero G₀] [GroupWithZero G₀'] [MonoidWithZeroHomClass F G₀ G₀'] (f : F) (a b : G₀)

/-- A monoid homomorphism between groups with zeros sending `0` to `0` sends `a⁻¹` to `(f a)⁻¹`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e83fdf511c3b2bd8daadc2d3dabba984e43a0973` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
