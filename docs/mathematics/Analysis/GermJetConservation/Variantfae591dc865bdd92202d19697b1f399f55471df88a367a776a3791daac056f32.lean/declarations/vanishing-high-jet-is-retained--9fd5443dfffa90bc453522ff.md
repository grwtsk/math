# vanishing_high_jet_is_retained

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8687eeab-00cd-d51b-95f4-e37736f74044",
  "kind": "theorem",
  "lexical_name": "vanishing_high_jet_is_retained",
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
  "slug": "vanishing-high-jet-is-retained--9fd5443dfffa90bc453522ff",
  "source": {
    "blob": "68b1222812b5e1b6db62c2da60e58bdddaa51d81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 34,
    "path": "GRWTSK/Analysis/GermJetConservation/Variantfae591dc865bdd92202d19697b1f399f55471df88a367a776a3791daac056f32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fd5443dfffa90bc453522ff29080b9121afa38482b6ad208da0b003f142b4f1",
  "verification": {
    "reference": "docs/verification/Analysis/GermJetConservation/Variantfae591dc865bdd92202d19697b1f399f55471df88a367a776a3791daac056f32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8687eeab-00cd-d51b-95f4-e37736f74044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vanishing_high_jet_is_retained {C I R : ℂ → ℂ} {j : ℕ}
    (hjoin : C =ᶠ[𝓝 (1 : ℂ)] (fun z => I z + R z))
    (hI : ContDiffAt ℂ j I 1) (hR : ContDiffAt ℂ j R 1)
    (hzero : iteratedDeriv j R 1 = 0) : iteratedDeriv j I 1 = iteratedDeriv j C 1 := by
  have h := exact_germ_jet_split hjoin hI hR
  rw [hzero, add_zero] at h
  exact h.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/GermJetConservation/Variantfae591dc865bdd92202d19697b1f399f55471df88a367a776a3791daac056f32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/GermJetConservation/Variantfae591dc865bdd92202d19697b1f399f55471df88a367a776a3791daac056f32.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68b1222812b5e1b6db62c2da60e58bdddaa51d81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
