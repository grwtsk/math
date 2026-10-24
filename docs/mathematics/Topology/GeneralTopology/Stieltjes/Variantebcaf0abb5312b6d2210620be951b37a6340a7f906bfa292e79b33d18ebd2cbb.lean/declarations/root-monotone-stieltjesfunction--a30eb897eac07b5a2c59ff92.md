# _root_.Monotone.stieltjesFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7d96431ac76cb771e16c40367d1cb1c0c459f171e1ada6dc803b0f0ee50f69a",
  "kind": "def",
  "lexical_name": "_root_.Monotone.stieltjesFunction",
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
  "slug": "root-monotone-stieltjesfunction--a30eb897eac07b5a2c59ff92",
  "source": {
    "blob": "741a735ff1afa6ceabadb9c4775b5a82bcb12840",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a30eb897eac07b5a2c59ff92905ac20bfb6b6068e3c226e5f2b61c7a9063fa9b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7d96431ac76cb771e16c40367d1cb1c0c459f171e1ada6dc803b0f0ee50f69a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.Monotone.stieltjesFunction {f : ℝ → ℝ} (hf : Monotone f) :
    StieltjesFunction where
  toFun := rightLim f
  mono' x y hxy := hf.rightLim hxy
  right_continuous' := by
    intro x s hs
    obtain ⟨l, u, hlu, lus⟩ : ∃ l u : ℝ, rightLim f x ∈ Ioo l u ∧ Ioo l u ⊆ s :=
      mem_nhds_iff_exists_Ioo_subset.1 hs
    obtain ⟨y, xy, h'y⟩ : ∃ (y : ℝ), x < y ∧ Ioc x y ⊆ f ⁻¹' Ioo l u :=
      mem_nhdsWithin_Ioi_iff_exists_Ioc_subset.1 (hf.tendsto_rightLim x (Ioo_mem_nhds hlu.1 hlu.2))
    change ∀ᶠ y in 𝓝[≥] x, rightLim f y ∈ s
    filter_upwards [Ico_mem_nhdsWithin_Ici ⟨le_refl x, xy⟩]with z hz
    apply lus
    refine' ⟨hlu.1.trans_le (hf.rightLim hz.1), _⟩
    obtain ⟨a, za, ay⟩ : ∃ a : ℝ, z < a ∧ a < y := exists_between hz.2
    calc
      rightLim f z ≤ f a := hf.rightLim_le za
      _ < u := (h'y ⟨hz.1.trans_lt za, ay.le⟩).2
#align monotone.stieltjes_function Monotone.stieltjesFunction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `741a735ff1afa6ceabadb9c4775b5a82bcb12840` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
