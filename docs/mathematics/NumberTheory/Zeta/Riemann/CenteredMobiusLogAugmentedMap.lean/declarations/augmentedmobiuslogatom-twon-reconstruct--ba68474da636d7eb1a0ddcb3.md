# augmentedMobiusLogAtom_twoN_reconstruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b75d4205-1eb6-2f67-6443-920a5a3cec8c",
  "kind": "theorem",
  "lexical_name": "augmentedMobiusLogAtom_twoN_reconstruct",
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
  "slug": "augmentedmobiuslogatom-twon-reconstruct--ba68474da636d7eb1a0ddcb3",
  "source": {
    "blob": "21f2a41a1bd0a76bb9f3da6c90b231341e9d676e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba68474da636d7eb1a0ddcb30af2772388d99a6b50a6d20ada63e327a887932b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b75d4205-1eb6-2f67-6443-920a5a3cec8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem augmentedMobiusLogAtom_twoN_reconstruct
    {N : ℕ} (hN : 1 ≤ N) (x y : AugmentedMobiusLogData)
    (hout : ∀ n, 1 ≤ n → n ≤ 2 * N →
      augmentedMobiusLogAtom x n = augmentedMobiusLogAtom y n) :
    x.anchor = y.anchor ∧
      ∀ d, 1 ≤ d → d ≤ N → x.genuine d = y.genuine d := by
  have hanchor := hout 1 (by omega) (by omega)
  rw [augmentedMobiusLogAtom_one, augmentedMobiusLogAtom_one] at hanchor
  refine ⟨hanchor, ?_⟩
  apply truncatedMobiusLogConvolution_twoN_reconstruct
  intro n hn hn2N
  have h := hout n hn hn2N
  unfold augmentedMobiusLogAtom at h
  rw [hanchor] at h
  have hx := truncated_eq_mobiusLogDivisorRow hn hn2N x.genuine
  have hy := truncated_eq_mobiusLogDivisorRow hn hn2N y.genuine
  linarith

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogAugmentedMap.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21f2a41a1bd0a76bb9f3da6c90b231341e9d676e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
