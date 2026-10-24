# ZeroConfig.summable_Gsummand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd5dc29b-b887-663c-edc8-7867c7d7709f",
  "kind": "theorem",
  "lexical_name": "ZeroConfig.summable_Gsummand",
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
  "slug": "zeroconfig-summable-gsummand--b5bd5e76fe674ed6d3326a33",
  "source": {
    "blob": "e42ec40aaa1fba3380c379aefd9371d57526e89d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5bd5e76fe674ed6d3326a339fdfb0c02577a6b5b953796f044ae34afa4b5628",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd5dc29b-b887-663c-edc8-7867c7d7709f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZeroConfig.summable_Gsummand (Z : ZeroConfig) (P : Params) (T : ℝ)
    (hEF : ExplicitFormulaPaper Z) (hL : 0 < P.L T)
    (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ)))
    (hφsupp : tsupport (P.phi T) ⊆ Icc (-(P.L T / 2)) (P.L T / 2)) (k l : Fin (P.d T)) :
    Summable (fun ρ : Z.carrier => Z.Gsummand P T k l ρ) := by
  obtain ⟨hS, -, -⟩ := hEF (P.L T) hL (P.fk T k) (P.fk T l) (GzGp.fk_contDiff P T hφC2 k)
    (GzGp.fk_contDiff P T hφC2 l) (GzGp.fk_tsupport P T hφsupp k) (GzGp.fk_tsupport P T hφsupp l)
  refine hS.congr fun ρ => ?_
  unfold ZeroConfig.Gsummand ZeroConfig.Wsummand
  rw [GzGp.paperFT_fk, GzGp.paperFT_fk, ← Complex.conj_ofReal (P.tau T l), ← map_sub,
    GzGp.phiHat_conj, Complex.conj_conj, Complex.conj_ofReal]

end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42ec40aaa1fba3380c379aefd9371d57526e89d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
