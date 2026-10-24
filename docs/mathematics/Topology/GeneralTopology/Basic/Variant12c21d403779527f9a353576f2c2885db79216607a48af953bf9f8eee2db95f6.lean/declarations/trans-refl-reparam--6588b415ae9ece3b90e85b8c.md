# trans_refl_reparam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81ac0e1b-eab6-6d67-ba97-8fdf5e5f396b",
  "kind": "theorem",
  "lexical_name": "trans_refl_reparam",
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
  "slug": "trans-refl-reparam--6588b415ae9ece3b90e85b8c",
  "source": {
    "blob": "896790902782eb7544f66d2e058bd8df325f9cf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6588b415ae9ece3b90e85b8c86a78fa056c20a81d566a0ed5760fe3c1eba1605",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81ac0e1b-eab6-6d67-ba97-8fdf5e5f396b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans_refl_reparam (p : Path x₀ x₁) :
    p.trans (Path.refl x₁) =
      p.reparam (fun t => ⟨transReflReparamAux t, transReflReparamAux_mem_I t⟩) (by continuity)
        (Subtype.ext transReflReparamAux_zero) (Subtype.ext transReflReparamAux_one) := by
  ext
  unfold transReflReparamAux
  simp only [Path.trans_apply, not_le, coe_reparam, Function.comp_apply, one_div, Path.refl_apply]
  split_ifs
  · rfl
  · rfl
  · simp
  · simp
#align path.homotopy.trans_refl_reparam Path.Homotopy.trans_refl_reparam

/-- For any path `p` from `x₀` to `x₁`, we have a homotopy from `p.trans (Path.refl x₁)` to `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant12c21d403779527f9a353576f2c2885db79216607a48af953bf9f8eee2db95f6.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `896790902782eb7544f66d2e058bd8df325f9cf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
