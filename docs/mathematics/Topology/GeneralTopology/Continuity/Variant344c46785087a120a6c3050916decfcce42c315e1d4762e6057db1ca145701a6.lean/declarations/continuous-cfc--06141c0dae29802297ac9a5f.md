# Continuous.cfcₙ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c47a47b6-cad7-09b8-c90e-0498fa78ca72",
  "kind": "theorem",
  "lexical_name": "Continuous.cfcₙ'",
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
  "slug": "continuous-cfc--06141c0dae29802297ac9a5f",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 950,
    "line": 934,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06141c0dae29802297ac9a5f8d2c178c5a27f482fca2959a94329fac2b69be54",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c47a47b6-cad7-09b8-c90e-0498fa78ca72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 934–950.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.cfcₙ' [TopologicalSpace X] {s : Set 𝕜} (hs : IsCompact s) (f : 𝕜 → 𝕜)
    {a : X → A} (ha_cont : Continuous a) (ha : ∀ x, quasispectrum 𝕜 (a x) ⊆ s)
    (hf : ContinuousOn f s := by cfc_cont_tac) (hf0 : f 0 = 0 := by cfc_zero_tac)
    (ha' : ∀ x, p (a x) := by cfc_tac) :
    Continuous (fun x ↦ cfcₙ f (a x)) := by
  rw [← continuousOn_univ] at ha_cont ⊢
  exact ha_cont.cfcₙ' hs f (fun x _ ↦ ha x) (fun x _ ↦ ha' x)

/-- If `f : 𝕜 → 𝕜` is continuous on `s` and `f 0 = 0` and `a : X → A` is continuous and `a x`
satisfies the predicate `p` associated to `𝕜` and `s` is a common neighborhood of the quasispectra
of `a x` for all `x`, then `fun x ↦ cfcₙ f (a x)` is continuous.

This is weaker than `Continuous.cfcₙ` since it requires `f` to be continuous on a *neighborhood* of
the quasispectra, but in practice it is often easier to apply because `s` is not required to be
compact, nor does it require an indexed family of compact sets. This is proven using
`Continuous.cfcₙ` and `upperHemicontinuous_quasispectrum` to produce the necessary family of
compact sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L934).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
