# integral_tent_on_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a0bb6b2-f538-b77b-6aa6-97ef3f9c8c78",
  "kind": "theorem",
  "lexical_name": "integral_tent_on_window",
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
  "slug": "integral-tent-on-window--13636c2978ce8d830c97fd7b",
  "source": {
    "blob": "7a8ef443abc47f9d8fe07040aaf0931880b7a8e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 57,
    "path": "GRWTSK/Analysis/Real/RationalRieszPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13636c2978ce8d830c97fd7bccafdadd51b74a093bb80785ffbe8cfd52daf776",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/RationalRieszPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a0bb6b2-f538-b77b-6aa6-97ef3f9c8c78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_tent_on_window (a b x h : ℝ) (hh : 0 < h)
    (hal : a ≤ x - h) (hrb : x + h ≤ b) :
    (∫ t in a..b, tent x h t * rationalDensity t) =
      ∫ t in (x - h)..(x + h), tent x h t * rationalDensity t := by
  have hs : Function.support (fun t => tent x h t * rationalDensity t) ⊆
      Ioc (x - h) (x + h) := by
    intro t ht
    have hn : tent x h t ≠ 0 := (mul_ne_zero_iff.mp ht).1
    have hp : 0 < tent x h t := lt_of_le_of_ne (tent_nonneg x h t) (Ne.symm hn)
    have hm := (tent_pos_iff x h t hh).mp hp
    exact ⟨hm.1, hm.2.le⟩
  have hb : Function.support (fun t => tent x h t * rationalDensity t) ⊆ Ioc a b := by
    intro t ht
    have hm := hs ht
    exact ⟨lt_of_le_of_lt hal hm.1, hm.2.trans hrb⟩
  rw [intervalIntegral.integral_eq_integral_of_support_subset hb,
    intervalIntegral.integral_eq_integral_of_support_subset hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/RationalRieszPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/RationalRieszPrimitive.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a8ef443abc47f9d8fe07040aaf0931880b7a8e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
