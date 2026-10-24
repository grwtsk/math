# atTop_finset_eq_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11567d2e-cf2c-70b2-6821-d4917d667188",
  "kind": "theorem",
  "lexical_name": "atTop_finset_eq_iInf",
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
  "slug": "attop-finset-eq-iinf--92ecbf1f3a6599e5d6081856",
  "source": {
    "blob": "d73a7f50977ca043313f2ab6cd5666950d7670e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92ecbf1f3a6599e5d6081856decee6ed9902e666040555ae049414337d725a28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11567d2e-cf2c-70b2-6821-d4917d667188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem atTop_finset_eq_iInf : (atTop : Filter (Finset α)) = ⨅ x : α, 𝓟 (Ici {x}) := by
  refine le_antisymm (le_iInf fun i => le_principal_iff.2 <| mem_atTop ({i} : Finset α)) ?_
  refine
    le_iInf fun s =>
      le_principal_iff.2 <| mem_iInf_of_iInter s.finite_toSet (fun i => mem_principal_self _) ?_
  simp only [subset_def, mem_iInter, SetCoe.forall, mem_Ici,
    Finset.mem_singleton, Finset.subset_iff, forall_eq]
  exact fun t => id

/-- If `f` is a monotone sequence of `Finset`s and each `x` belongs to one of `f n`, then
`Tendsto f atTop atTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d73a7f50977ca043313f2ab6cd5666950d7670e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
