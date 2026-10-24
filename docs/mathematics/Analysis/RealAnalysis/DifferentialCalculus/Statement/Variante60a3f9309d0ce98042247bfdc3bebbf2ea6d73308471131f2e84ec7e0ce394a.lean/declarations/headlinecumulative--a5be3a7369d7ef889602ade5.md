# HeadlineCumulative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3028d808f5af7ce250d5fe54f9334ceead949996ee0df7d8bc14831b50b9372",
  "kind": "def",
  "lexical_name": "HeadlineCumulative",
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
  "slug": "headlinecumulative--a5be3a7369d7ef889602ade5",
  "source": {
    "blob": "b1339c09f5e7b9f07de9a533850183e905d8c138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 311,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5be3a7369d7ef889602ade54bbf1168451217e20b71876d40152574653ed71f",
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

Occurrence: `declaration:e3028d808f5af7ce250d5fe54f9334ceead949996ee0df7d8bc14831b50b9372`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HeadlineCumulative (c cd : ℝ) : Prop :=
  ∃ T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
    c * (Ncount 0 T : ℝ) ≤ (N0simple 0 T : ℝ) ∧ cd * (Ncount 0 T : ℝ) ≤ (Ndist 0 T : ℝ)

/-! The theorems of XiPrime/Final.lean state these headlines with their full types written out, e.g.

  theorem xiDeriv_simple_on_line_flat : ∃ T₀, ∀ T ≥ T₀,
      (0.85838 : ℝ) * Ncount T (2*T) ≤ N0simple T (2*T) ∧ (0.92919 : ℝ) * Ncount T (2*T) ≤ Ndist T (2*T)

with (F2) (XiDerivZerosInStrip), the seam facts (XiDerivSeam) and XiDerivRvM instantiated by the theorems
that prove them, so no such hypothesis appears in the published statements. -/

/-! ## §6. The Z′ layer (Hardy's function)  [XF′ §9] — same architecture

Statement discipline: everything is about the Mathlib-honest meromorphic function
W := ζ′ + L₂ζ = ζ′ − ½(χ′/χ)ζ (Defs.hardyW); Hardy's Z(t) = e^{iϑ(t)}ζ(½+it) and Z′(t) = i e^{iϑ(t)} W(½+it)
[XF′ (Z3)] are a REMARK (a Z built from arg/log branches is not something Lean's deriv treats honestly).
So "t ∈ (T,2T] with Z′(t) = 0 ≠ Z″(t)" is rendered as "½+it is a simple zero of W", which (Z3) shows is the
same set with the same multiplicities. -/

/-- **(Z6)(iii)+(i)+(Z2)** [XF′ §9.1]: every zero of W with |Im ρ| ≥ t₀ lies in 0 < Re ρ < 1 (Littlewood's gap
theorem + de la Vallée Poussin on 1 ≤ σ ≤ 2; Stirling for σ ≥ 2; the functional equation W(s) = −χ(s)W(1−s)
for σ ≤ 0).  Kept as a named Prop; proved in this tree for some t₀ > 0: wZerosInStrip_holds
(XiPrime/Hardy/ZeroFree.lean), with the W seam then given by wSeam_of_strip (XiPrime/Hardy/Seam.lean). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variante60a3f9309d0ce98042247bfdc3bebbf2ea6d73308471131f2e84ec7e0ce394a.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1339c09f5e7b9f07de9a533850183e905d8c138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
