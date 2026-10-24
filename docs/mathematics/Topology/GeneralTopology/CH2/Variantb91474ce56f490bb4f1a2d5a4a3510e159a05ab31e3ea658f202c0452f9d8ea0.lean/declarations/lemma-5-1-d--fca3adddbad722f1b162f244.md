# lemma_5_1_d

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da6d5bab-f149-375e-640c-fad7f6004228",
  "kind": "theorem",
  "lexical_name": "lemma_5_1_d",
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
  "slug": "lemma-5-1-d--fca3adddbad722f1b162f244",
  "source": {
    "blob": "39e6e6fe603b42bd8f7af06c3bdf9e43a667fe84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 611,
    "path": "GRWTSK/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca3adddbad722f1b162f244479679e9605f0a17683a6ae0f1cd44fcf60820de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da6d5bab-f149-375e-640c-fad7f6004228`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_5_1_d (n : ℕ)
    (hG : ∀ s, G s = G_circ s + (Real.sign s.im : ℂ) * G_star s)
    (hG_circ_mero : MeromorphicOn G_circ l.R) (hG_star_mero : MeromorphicOn G_star l.R)
    (hG_star_symm : ConjAntisymm G_star)
    (hx₀ : 1 ≤ x₀)
    (hG_bdd : IsBoundedNoPolesOn (fun s ↦ G s * (x₀ : ℂ) ^ s) l.Rboundary)
    (hGc_L : IsBoundedNoPolesOn (fun s ↦ G_circ s * (x₀ : ℂ) ^ s) l.L)
    (hGc_contour : IsBoundedNoPolesOn (fun s ↦ G_circ s * (x₀ : ℂ) ^ s) l.admissible_contour)
    (hGs_L : IsBoundedNoPolesOn (fun s ↦ G_star s * (x₀ : ℂ) ^ s) l.L)
    (hGs_contour : IsBoundedNoPolesOn (fun s ↦ G_star s * (x₀ : ℂ) ^ s) l.admissible_contour)
    (hx : x₀ < x)
    (hfin : {z ∈ l.R \ l.RC | meromorphicOrderAt (fun s ↦ G s * (x : ℂ) ^ s) z < 0}.Finite)
    (hsimple : HasSimplePolesOn (fun s ↦ G s * (x : ℂ) ^ s) l.R)
    (hsimple_circ : HasSimplePolesOn (fun s ↦ G_circ s * (x : ℂ) ^ s) l.R) :
    l.intCn1Plus n (fun s ↦ G_star s * (x : ℂ) ^ s) -
        l.intCn1Minus n (fun s ↦ G_star s * (x : ℂ) ^ s) =
      2 * Complex.I * ((l.intCn1Plus n (fun s ↦ G_star s * (x : ℂ) ^ s)).im : ℂ) := by
  sorry

@[blueprint
  "ch2-lemma-5-1-e"
  (title := "The $C_\\infty$ limit (CH2 Lemma 5.1, eq. 5)")
  (statement := /--
  As $n \to \infty$ (so $\sigma_n \to -\infty$), the top segment of $C_n^+$ together with the
  bottom segment of $C_n^-$ converge to the contour $C_\infty$:
  $$ \lim_{n\to\infty} \left( \int_{\sigma_n + iT}^{1 + iT} + \int_{1 - iT}^{\sigma_n - iT} \right) G(s) x^s\, ds = \int_{C_\infty} G(s) x^s\, ds. $$ -/)
  (proof := /-- As $\sigma_n \to -\infty$ the truncated horizontal segments exhaust the rays of $C_\infty$; uses boundedness of $G x_0^s$ on $\partial R$ and $x > x_0$. -/)
  (latexEnv := "sublemma")
  (discussion := 1452)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CH2/Variantb91474ce56f490bb4f1a2d5a4a3510e159a05ab31e3ea658f202c0452f9d8ea0.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e6e6fe603b42bd8f7af06c3bdf9e43a667fe84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
