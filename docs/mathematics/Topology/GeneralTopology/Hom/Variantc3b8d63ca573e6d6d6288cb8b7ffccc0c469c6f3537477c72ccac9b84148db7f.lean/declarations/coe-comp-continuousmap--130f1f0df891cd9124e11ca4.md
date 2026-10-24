# coe_comp_continuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e856ca32-e163-8c33-919e-1465568e4b48",
  "kind": "theorem",
  "lexical_name": "coe_comp_continuousMap",
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
  "slug": "coe-comp-continuousmap--130f1f0df891cd9124e11ca4",
  "source": {
    "blob": "74f4c57f4396092be50d088753e6271dc45726a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 195,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:130f1f0df891cd9124e11ca45ec342f835943998fed0261ae39c7cc4b5c00259",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e856ca32-e163-8c33-919e-1465568e4b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_comp_continuousMap (f : SpectralMap β γ) (g : SpectralMap α β) :
    (f ∘ g)= (f : ContinuousMap β γ) ∘ (g: ContinuousMap α β) := by
   rfl

-- porting note: removed `simp` from this and added lemma above to address `simpNF` lint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variantc3b8d63ca573e6d6d6288cb8b7ffccc0c469c6f3537477c72ccac9b84148db7f.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74f4c57f4396092be50d088753e6271dc45726a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
