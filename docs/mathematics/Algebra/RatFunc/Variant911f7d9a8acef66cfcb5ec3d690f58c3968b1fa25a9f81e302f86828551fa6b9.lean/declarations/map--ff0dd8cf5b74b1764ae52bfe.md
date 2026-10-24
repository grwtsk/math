# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38345b00d324add294e951ebb7a62ebaa5b870af3b92bb262dc73acd116d8d67",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--ff0dd8cf5b74b1764ae52bfe",
  "source": {
    "blob": "8d13c6afd04fada6eb5221b3c4e8041d1403e570",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 619,
    "path": "GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff0dd8cf5b74b1764ae52bfe4cc100917ef8afe7b41668fcd5744f5c90d182e8",
  "verification": {
    "reference": "docs/verification/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38345b00d324add294e951ebb7a62ebaa5b870af3b92bb262dc73acd116d8d67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 619–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map [MonoidHomClass F R[X] S[X]] (φ : F) (hφ : R[X]⁰ ≤ S[X]⁰.comap φ) : RatFunc R →* RatFunc S
    where
  toFun f :=
    RatFunc.liftOn f
      (fun n d => if h : φ d ∈ S[X]⁰ then ofFractionRing (Localization.mk (φ n) ⟨φ d, h⟩) else 0)
      fun {p q p' q'} hq hq' h => by
      dsimp only -- porting note: force the function to be applied
      rw [dif_pos, dif_pos]
      congr 1 -- porting note: this was a `rw [ofFractionRing.inj_eq]` which was overkill anyway
      rw [Localization.mk_eq_mk_iff]
      rotate_left
      · exact hφ hq
      · exact hφ hq'
      refine' Localization.r_of_eq _
      simpa only [map_mul] using congr_arg φ h
  map_one' := by
    dsimp only -- porting note: force the function to be applied
    rw [← ofFractionRing_one, ← Localization.mk_one, liftOn_ofFractionRing_mk, dif_pos]
    · simpa using ofFractionRing_one
    · simpa using Submonoid.one_mem _
  map_mul' x y := by
    dsimp only -- porting note: force the function to be applied
    cases' x with x; cases' y with y
    -- porting note: added `using Localization.rec` (`Localization.induction_on` didn't work)
    induction' x using Localization.rec with p q
    induction' y using Localization.rec with p' q'
    · have hq : φ q ∈ S[X]⁰ := hφ q.prop
      have hq' : φ q' ∈ S[X]⁰ := hφ q'.prop
      have hqq' : φ ↑(q * q') ∈ S[X]⁰ := by simpa using Submonoid.mul_mem _ hq hq'
      simp_rw [← ofFractionRing_mul, Localization.mk_mul, liftOn_ofFractionRing_mk, dif_pos hq,
        dif_pos hq', dif_pos hqq', ← ofFractionRing_mul, Submonoid.coe_mul, map_mul,
        Localization.mk_mul, Submonoid.mk_mul_mk]
    · rfl
    · rfl
#align ratfunc.map RatFunc.map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RatFunc/Variant911f7d9a8acef66cfcb5ec3d690f58c3968b1fa25a9f81e302f86828551fa6b9.lean#L619).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d13c6afd04fada6eb5221b3c4e8041d1403e570` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
