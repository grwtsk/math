# XiTraceTransfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:429fb7a021e725d502a7c105515e201d093419e2f3979c390b611338749a010d",
  "kind": "def",
  "lexical_name": "XiTraceTransfer",
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
  "slug": "xitracetransfer--39ef8ed052fa4926c0a34a5d",
  "source": {
    "blob": "b1339c09f5e7b9f07de9a533850183e905d8c138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39ef8ed052fa4926c0a34a5d32f576bd51cd0e237bec75d3dacfb7e7a47ee95b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:429fb7a021e725d502a7c105515e201d093419e2f3979c390b611338749a010d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def XiTraceTransfer (Z : ZeroConfig) (Pf : ℝ → Params) (F : CoeffFamily) : Prop :=
  (∀ δ : ℝ, 0 < δ → ∀ᶠ T in atTop,
    |rtrace ((Pf T).hat T (Z.Gz (Pf T) T)) - rtrace ((Pf T).hat T ((Pf T).GpC T (F.c T)))|
      ≤ δ * (Z.N T (2 * T) : ℝ)) ∧
  (∀ δ : ℝ, 0 < δ → ∀ᶠ T in atTop,
    frobSq ((Pf T).hat T (Z.Gz (Pf T) T))
      ≤ (1 + δ) * frobSq ((Pf T).hat T ((Pf T).GpC T (F.c T))) + δ * (Z.N T (2 * T) : ℝ))

/-- **CoeffMoments — the two moments of the fixed-coefficient prime-side matrix**  [XF′ Thm 8.1 for Mᵀ;
§11 "coefficient-generalised prime side"].  For every δ > 0 eventually:
(1−δ)N ≤ tr M̂ᵀ ≤ (1+δ)N  and  ‖M̂ᵀ‖_F² ≤ (κ + δ)·N,  N = N(T,2T) of Z (enters only through H-RvM for Z:
the prime side computes T ℓ₁/2π-type main terms).  The producer `coeffMoments_of_traces` has the shape
CoeffFamily.Hyps F → RiemannVonMangoldt Z → GammaFacts → MVHilbert C_MV → P.Valid → P.lam < 1 →
(window realisation, per profile: ∃ c T₀, ∀ T ≥ T₀, ThmD.AdmWindow ((Pf T).phi T) (P.L T) P.w c
∧ 1/2 ≤ AdmWindow.bv …) → (∀ T, (Pf T).lam = P.lam ∧ (Pf T).w = P.w) →
Tendsto (fun T => ThmD.cRatio (P.lam1 T) ((Pf T).a T) ((Pf T).b T) (J_T T)) atTop (𝓝 c∞) → 0 < c∞ →
CoeffMoments Z Pf F c∞⁻¹,  with J_T T := 2/(P.L T)³ · l T · ∫ y in 0..P.L T, (F.D (y / l T) · (Pf T).g T y);
Assembly plugs c∞ = cWin F.D P.lam v via `tendsto_cRatio_cWin`.  The intermediate
TracesBoundsXi lives in XiPrime/PrimeSide/Interface.lean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1339c09f5e7b9f07de9a533850183e905d8c138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
