# hasDerivAt_of_tendstoUniformly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a584a8dc-1a02-1ff9-4fdb-470dcd9ae9a8",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_of_tendstoUniformly",
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
  "slug": "hasderivat-of-tendstouniformly--12737461cdbe6189d821317c",
  "source": {
    "blob": "2d05eff24a158325e4d1973f9d52564d0a59ff77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 566,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12737461cdbe6189d821317c27d5056150e2f7dcbd326ed94cdef948a7b5b086",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a584a8dc-1a02-1ff9-4fdb-470dcd9ae9a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_of_tendstoUniformly [NeBot l] (hf' : TendstoUniformly f' g' l)
    (hf : ∀ᶠ n in l, ∀ x : 𝕜, HasDerivAt (f n) (f' n x) x)
    (hfg : ∀ x : 𝕜, Tendsto (fun n => f n x) l (𝓝 (g x))) : ∀ x : 𝕜, HasDerivAt g (g' x) x := by
  intro x
  have hf : ∀ᶠ n in l, ∀ x : 𝕜, x ∈ Set.univ → HasDerivAt (f n) (f' n x) x := by
    filter_upwards [hf]with n h x _ using h x
  have hfg : ∀ x : 𝕜, x ∈ Set.univ → Tendsto (fun n => f n x) l (𝓝 (g x)) := by simp [hfg]
  have hf' : TendstoUniformlyOn f' g' l Set.univ := by rwa [tendstoUniformlyOn_univ]
  exact hasDerivAt_of_tendstoUniformlyOn isOpen_univ hf' hf hfg x (Set.mem_univ x)
#align has_deriv_at_of_tendsto_uniformly hasDerivAt_of_tendstoUniformly

end deriv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/UniformLimitsDeriv/Variant9e3d0c848438b531c98a0175a4ea66edfc68d462d4333a485ecefa33001e3f74.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d05eff24a158325e4d1973f9d52564d0a59ff77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
