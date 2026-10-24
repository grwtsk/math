# map_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f17f544c-cb04-98e0-4d91-cd8658c0088f",
  "kind": "theorem",
  "lexical_name": "map_subst",
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
  "slug": "map-subst--cae7a00d45c9f98935f8fbd6",
  "source": {
    "blob": "8a91e921819b605ae2907dddfea54663b2e353ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 357,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae7a00d45c9f98935f8fbd67913187301edfcbe594248a5d8add55fe75169cc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f17f544c-cb04-98e0-4d91-cd8658c0088f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_subst {a : σ → MvPowerSeries τ R} (ha : HasSubst a) {h : R →+* S}
    (f : MvPowerSeries σ R) :
    (f.subst a).map h = (f.map h).subst (fun i => (a i).map h) := by
  ext n
  have {r : R} : h r = h.toAddMonoidHom r := rfl
  rw [coeff_subst (ha.map h), coeff_map, coeff_subst ha, this, AddMonoidHom.map_finsum _
    (coeff_subst_finite ha _ _), finsum_congr]
  intro d
  simp [smul_eq_mul, RingHom.toAddMonoidHom_eq_coe, AddMonoidHom.coe_coe, map_mul,
    ← coeff_map, Finsupp.prod]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variantf0a1bc53097cac08f669261b6e3c9c48ecfef3a750ce91c47b02f922d37198c2.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a91e921819b605ae2907dddfea54663b2e353ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
