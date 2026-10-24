# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9059636683c8f3100b0245b6eb70443e22596f7468f335a5e6679b3f1390fa51",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3fd6af77a607ef1e3a5d7c5c",
  "source": {
    "blob": "629b7e1b7e879a2fbaa8c6ea97246011f0c44131",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fd6af77a607ef1e3a5d7c5c9f46b172c65665ddb60fe6c43a0d84717dff9e63",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9059636683c8f3100b0245b6eb70443e22596f7468f335a5e6679b3f1390fa51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) Valued.isTopologicalDivisionRing [Valued K Γ₀] :
    IsTopologicalDivisionRing K :=
  { (by infer_instance : IsTopologicalRing K) with
    continuousAt_inv₀ x x_ne s s_in := by
      obtain ⟨γ, hs⟩ := Valued.mem_nhds.mp s_in; clear s_in
      rw [mem_map, Valued.mem_nhds]
      let γ' := Units.mk0 ((ValueGroup₀.restrict₀ _) x) (v.restrict.ne_zero_iff.mpr x_ne)
      use min (γ * (γ' * γ')) γ'
      intro y y_in
      apply hs
      simp only [mem_ofPred_eq, Units.min_val, Units.val_mul] at y_in
      exact Valuation.inversion_estimate _ x_ne y_in }

/-- A valued division ring is separated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuedField/Variant18c14a8fcb8cbe0fd8d1c59e9dc2313f6aaa4185e0cb8bb3cbcc0dd77ab15ed2.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `629b7e1b7e879a2fbaa8c6ea97246011f0c44131` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
