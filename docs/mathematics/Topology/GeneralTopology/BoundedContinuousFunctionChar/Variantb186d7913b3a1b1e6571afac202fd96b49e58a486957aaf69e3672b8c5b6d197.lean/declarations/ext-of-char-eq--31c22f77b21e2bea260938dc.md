# ext_of_char_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a256b08941600c9d1c71e3f6467b34cbd7d9b49a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b186d7913b3a1b1e6571afac202fd96b49e58a486957aaf69e3672b8c5b6d197.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2dae7870-1064-e664-4e2e-650b28f47631",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0904e018-8879-6a9e-c9ea-eb21bd75647e",
  "kind": "theorem",
  "lexical_name": "ext_of_char_eq",
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
  "slug": "ext-of-char-eq--31c22f77b21e2bea260938dc",
  "source": {
    "blob": "a256b08941600c9d1c71e3f6467b34cbd7d9b49a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variantb186d7913b3a1b1e6571afac202fd96b49e58a486957aaf69e3672b8c5b6d197.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31c22f77b21e2bea260938dc2a6009f136dcaf531d2f6822afb3c4ecf87353f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variantb186d7913b3a1b1e6571afac202fd96b49e58a486957aaf69e3672b8c5b6d197.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0904e018-8879-6a9e-c9ea-eb21bd75647e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_of_char_eq (he : Continuous e) (he' : e ≠ 1)
    (hL : Continuous fun p : V × W ↦ L p.1 p.2) (hL' : ∀ v ≠ 0, L v ≠ 0) {v v' : V}
    (h : ∀ w, char he hL w v = char he hL w v') :
    v = v' := by
  contrapose! h
  obtain ⟨w, hw⟩ := DFunLike.ne_iff.mp (hL' (v - v') (sub_ne_zero_of_ne h))
  obtain ⟨a, ha⟩ := DFunLike.ne_iff.mp he'
  use (a / (L (v - v') w)) • w
  simp only [map_sub, LinearMap.sub_apply, char_apply, ne_eq]
  rw [← div_eq_one_iff_eq (Circle.coe_ne_zero _), div_eq_inv_mul, ← Metric.unitSphere.coe_inv,
    ← e.map_neg_eq_inv, ← Submonoid.coe_mul, ← e.map_add_eq_mul, OneMemClass.coe_eq_one]
  simp only [map_sub, LinearMap.sub_apply, LinearMap.zero_apply, AddChar.one_apply,
    map_smul, smul_eq_mul] at ha hw ⊢
  #adaptation_note /-- Before https://github.com/leanprover/lean4/pull/13166
  (replacing grind's canonicalizer with a type-directed normalizer), `grind` closed this goal.
  It is not yet clear whether this is due to defeq abuse in Mathlib or a problem in the new
  canonicalizer; a minimization would help. The original proof was: `grind` -/
  ring_nf
  field_simp
  assumption

/-- Monoid homomorphism mapping `w` to `fun v ↦ e (L v w)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variantb186d7913b3a1b1e6571afac202fd96b49e58a486957aaf69e3672b8c5b6d197.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BoundedContinuousFunctionChar/Variantb186d7913b3a1b1e6571afac202fd96b49e58a486957aaf69e3672b8c5b6d197.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a256b08941600c9d1c71e3f6467b34cbd7d9b49a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
