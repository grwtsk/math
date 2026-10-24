# infinite_range_add_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae7e1487-a5aa-4582-c2a2-7d6e19c1ecc3",
  "kind": "lemma",
  "lexical_name": "infinite_range_add_smul_iff",
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
  "slug": "infinite-range-add-smul-iff--289a0008fe7721ccdda984e2",
  "source": {
    "blob": "c3dc44635030e4629428eebc83e6dc06ecce701f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 971,
    "line": 964,
    "path": "GRWTSK/Algebra/Torsion/Variantfd0aa75a6a8be9e377d009cab628af3fb933e78ddd270e61de912cb1ff0c4919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:289a0008fe7721ccdda984e24e785f2a6f33ad62610486954bb644009057de74",
  "verification": {
    "reference": "docs/verification/Algebra/Torsion/Variantfd0aa75a6a8be9e377d009cab628af3fb933e78ddd270e61de912cb1ff0c4919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae7e1487-a5aa-4582-c2a2-7d6e19c1ecc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 964–971.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma infinite_range_add_smul_iff
    [AddCommGroup M] [Ring R] [Module R M] [Infinite R] [NoZeroSMulDivisors R M] (x y : M) :
    (Set.range <| fun r : R ↦ x + r • y).Infinite ↔ y ≠ 0 := by
  refine ⟨fun h hy ↦ by simp [hy] at h, fun h ↦ Set.infinite_range_of_injective fun r s hrs ↦ ?_⟩
  rw [add_right_inj] at hrs
  exact smul_left_injective _ h hrs

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Torsion/Variantfd0aa75a6a8be9e377d009cab628af3fb933e78ddd270e61de912cb1ff0c4919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Torsion/Variantfd0aa75a6a8be9e377d009cab628af3fb933e78ddd270e61de912cb1ff0c4919.lean#L964).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3dc44635030e4629428eebc83e6dc06ecce701f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
