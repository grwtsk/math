# trans_pi_eq_pi_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91aae9ac-9e20-5dbe-82c9-e9810a3892f4",
  "kind": "theorem",
  "lexical_name": "trans_pi_eq_pi_trans",
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
  "slug": "trans-pi-eq-pi-trans--7a49010f966a3c133a9c78a3",
  "source": {
    "blob": "d03853126d4b7e36b4b1643cb3e3842198d44e75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 497,
    "path": "GRWTSK/Topology/GeneralTopology/Path/Varianta06a2be592c1944825e8df4b940609178aa8e186ad44a7e63ce0193b4fb36366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a49010f966a3c133a9c78a3073c7445b0e0524a7fa4dd92fb93c0b0918cb9dd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Path/Varianta06a2be592c1944825e8df4b940609178aa8e186ad44a7e63ce0193b4fb36366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91aae9ac-9e20-5dbe-82c9-e9810a3892f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans_pi_eq_pi_trans (γ₀ : ∀ i, Path (as i) (bs i)) (γ₁ : ∀ i, Path (bs i) (cs i)) :
    (Path.pi γ₀).trans (Path.pi γ₁) = Path.pi fun i => (γ₀ i).trans (γ₁ i) := by
  ext t i
  unfold Path.trans
  simp only [Path.coe_mk_mk, Function.comp_apply, pi_coe]
  split_ifs <;> rfl

end Pi

/-! #### Pointwise multiplication/addition of two paths in a topological (additive) group -/


/-- Pointwise multiplication of paths in a topological group. The additive version is probably more
useful. -/
@[to_additive "Pointwise addition of paths in a topological additive group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Path/Varianta06a2be592c1944825e8df4b940609178aa8e186ad44a7e63ce0193b4fb36366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Path/Varianta06a2be592c1944825e8df4b940609178aa8e186ad44a7e63ce0193b4fb36366.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d03853126d4b7e36b4b1643cb3e3842198d44e75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
