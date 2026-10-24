# isQuotientCoveringMap_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c96078f3-d784-832a-b4bb-a62607c898a4",
  "kind": "theorem",
  "lexical_name": "isQuotientCoveringMap_zpow",
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
  "slug": "isquotientcoveringmap-zpow--8919dcd1e7f5a8ef8487e46c",
  "source": {
    "blob": "3f5e937551f540452cb5752d812aa666d5f409a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 128,
    "path": "GRWTSK/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8919dcd1e7f5a8ef8487e46c1328d733b4ceeb5092482286ca6911e0392e610e",
  "verification": {
    "reference": "docs/verification/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c96078f3-d784-832a-b4bb-a62607c898a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isQuotientCoveringMap_zpow (n : ℤ) (hn : (n : 𝕜) ≠ 0)
    (surj : (fun x : 𝕜 ↦ x ^ n).Surjective) :
    IsQuotientCoveringMap (fun x : 𝕜ˣ ↦ x ^ n) (zpowGroupHom (α := 𝕜ˣ) n).ker := by
  obtain ⟨n, rfl | rfl⟩ := n.eq_nat_or_neg
  · exact isQuotientCoveringMap_npow n (by aesop) (by simpa using surj)
  rw [show (zpowGroupHom (α := 𝕜ˣ) (-n)).ker = (powMonoidHom n).ker by ext; simp]
  convert (isQuotientCoveringMap_npow n (by aesop) _).homeomorph_comp (.inv 𝕜ˣ)
  · ext; simp
  convert! inv_involutive.surjective.comp surj; simp

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/CoveringMap/Variant36d54ef8161e885d6bbd2033e86cb28244767c5f50c0ade715366f36216a49f2.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f5e937551f540452cb5752d812aa666d5f409a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
