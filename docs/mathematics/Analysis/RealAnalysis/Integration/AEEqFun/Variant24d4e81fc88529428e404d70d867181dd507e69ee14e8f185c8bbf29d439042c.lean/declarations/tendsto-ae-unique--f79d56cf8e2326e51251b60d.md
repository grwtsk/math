# tendsto_ae_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09f5e706-91ec-6353-d1ab-5f93f3cce55d",
  "kind": "theorem",
  "lexical_name": "tendsto_ae_unique",
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
  "slug": "tendsto-ae-unique--f79d56cf8e2326e51251b60d",
  "source": {
    "blob": "72aaa222298ac5f791129517dd28850d74ea3897",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1018,
    "line": 998,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant24d4e81fc88529428e404d70d867181dd507e69ee14e8f185c8bbf29d439042c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f79d56cf8e2326e51251b60d2649683b00b0982ca4f735f30e23c9d4ff121eb8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant24d4e81fc88529428e404d70d867181dd507e69ee14e8f185c8bbf29d439042c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09f5e706-91ec-6353-d1ab-5f93f3cce55d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 998–1018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_ae_unique {ι : Type*} [T2Space β]
    {g h : α → β} {f : ι → α → β} {l : Filter ι} [l.NeBot]
    (hg : ∀ᵐ ω ∂μ, Tendsto (fun i => f i ω) l (𝓝 (g ω)))
    (hh : ∀ᵐ ω ∂μ, Tendsto (fun i => f i ω) l (𝓝 (h ω))) : g =ᵐ[μ] h := by
  filter_upwards [hg, hh] with ω hg1 hh1 using tendsto_nhds_unique hg1 hh1

end AELimit

end AEEqFun

end MeasureTheory

namespace ContinuousMap

open MeasureTheory

variable [TopologicalSpace α] [BorelSpace α] (μ)
variable [TopologicalSpace β] [SecondCountableTopologyEither α β] [PseudoMetrizableSpace β]

/-- The equivalence class of `μ`-almost-everywhere measurable functions associated to a continuous
map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqFun/Variant24d4e81fc88529428e404d70d867181dd507e69ee14e8f185c8bbf29d439042c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant24d4e81fc88529428e404d70d867181dd507e69ee14e8f185c8bbf29d439042c.lean#L998).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72aaa222298ac5f791129517dd28850d74ea3897` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
