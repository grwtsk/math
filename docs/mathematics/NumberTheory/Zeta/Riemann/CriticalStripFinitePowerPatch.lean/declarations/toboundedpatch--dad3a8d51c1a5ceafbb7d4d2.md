# toBoundedPatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:396d3c77a466526a594fec44db751deabf77654507d3e0db2c6b2312d374f037",
  "kind": "def",
  "lexical_name": "toBoundedPatch",
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
  "slug": "toboundedpatch--dad3a8d51c1a5ceafbb7d4d2",
  "source": {
    "blob": "d6fa16ca87f7c433a0cb410b2fc81bcda20cd858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 150,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dad3a8d51c1a5ceafbb7d4d2b5d404a59044f93dbba9990ee49da348c5dadd2e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:396d3c77a466526a594fec44db751deabf77654507d3e0db2c6b2312d374f037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toBoundedPatch (e : FinitePowerEnclosure N s) (hN : 1 ≤ N)
    {U V : Set ℂ} (a B b r : ℝ) (ha : 0 < a) (hB : 0 ≤ B) (hr : 0 ≤ r)
    (hconv : Convex ℝ V) (hc : s ∈ V) (hUV : U ⊆ V)
    (hreal : ∀ z ∈ V, 2 * a ≤ z.re) (hmodulus : ∀ z ∈ V, ‖z‖ ≤ B)
    (hradius : ∀ z ∈ U, ‖z - s‖ ≤ r) (hsample : b ≤ ‖e.sample‖)
    (hmargin : e.sourceError (2 * a) + derivativeBound a B * r < b) :
    SampleVariationPatch poleNormalizedZeta U := by
  have hσ : 0 < 2 * a := by positivity
  have hd : 0 ≤ derivativeBound a B := by unfold derivativeBound; positivity
  exact SampleVariationPatch.ofDerivativeEnclosure s e.sample b
    (e.sourceError (2 * a)) (derivativeBound a B) r
    (e.sourceError_nonneg hσ) hd hr hconv hc hUV
    (fun z _ => differentiable_poleNormalizedZeta z)
    (fun z hz => poleNormalized_deriv_norm_le ha (hreal z hz) (hmodulus z hz))
    hradius hsample (e.source_encloses hN hσ (hreal s hc)) hmargin

/-- A true zero defeats the strict margin regardless of cutoff refinement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePowerPatch.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6fa16ca87f7c433a0cb410b2fc81bcda20cd858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
