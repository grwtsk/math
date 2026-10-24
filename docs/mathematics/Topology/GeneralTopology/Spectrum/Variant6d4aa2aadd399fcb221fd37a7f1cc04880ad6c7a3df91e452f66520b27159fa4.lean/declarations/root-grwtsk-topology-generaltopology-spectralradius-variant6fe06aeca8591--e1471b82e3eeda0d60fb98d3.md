# _root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.NormedRing.algEquivComplexOfComplete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ff1fc98399d34f6c9585149fbbb0bd4b3b56792caa838a427a846e4b6dc94f9",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.NormedRing.algEquivComplexOfComplete",
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
  "slug": "root-grwtsk-topology-generaltopology-spectralradius-variant6fe06aeca8591--e1471b82e3eeda0d60fb98d3",
  "source": {
    "blob": "34a2695c0503dfea021f3abf7c0114c663196023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 484,
    "path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1471b82e3eeda0d60fb98d3abd0134f18d4b8c05f88f04a4c4a40bfc8f68149",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ff1fc98399d34f6c9585149fbbb0bd4b3b56792caa838a427a846e4b6dc94f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.NormedRing.algEquivComplexOfComplete [CompleteSpace A] : ℂ ≃ₐ[ℂ] A :=
  let nt : Nontrivial A := ⟨⟨1, 0, hA.mp ⟨⟨1, 1, mul_one _, mul_one _⟩, rfl⟩⟩⟩
  { Algebra.ofId ℂ A with
    toFun := algebraMap ℂ A
    invFun := fun a => (@spectrum.nonempty _ _ _ _ nt a).some
    left_inv := fun z => by
      simpa only [@scalar_eq _ _ _ _ _ nt _] using
        (@spectrum.nonempty _ _ _ _ nt <| algebraMap ℂ A z).some_mem
    right_inv := fun a => algebraMap_eq_of_mem (@hA) (@spectrum.nonempty _ _ _ _ nt a).some_mem }
#align normed_ring.alg_equiv_complex_of_complete NormedRing.algEquivComplexOfComplete

end GelfandMazurIsomorphism

section ExpMapping

local notation "↑ₐ" => algebraMap 𝕜 A

/-- For `𝕜 = ℝ` or `𝕜 = ℂ`, `exp 𝕜` maps the spectrum of `a` into the spectrum of `exp 𝕜 a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a2695c0503dfea021f3abf7c0114c663196023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
