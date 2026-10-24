# integral_sub_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33664340-8ffb-e5aa-0361-ff8ae8704dc7",
  "kind": "theorem",
  "lexical_name": "integral_sub_left",
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
  "slug": "integral-sub-left--a7f13100752e475a8fadc83f",
  "source": {
    "blob": "a70c583ba061275efe406256d68d3e2ac49f3cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 72,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7f13100752e475a8fadc83f05978ba13cbf5cb5e31752d778b8a5078ca49905",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33664340-8ffb-e5aa-0361-ff8ae8704dc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_sub_left (ε : ℝ) (hε : 0 < ε) (hε1 : ε < 1) :
    ∫ t in (0:ℝ)..(1 - ε), 1 / Real.log t =
    ∫ u in ε..1, 1 / Real.log (1 - u) := by
  -- Using integral_comp_sub_left: ∫ x in a..b, f(d-x) = ∫ x in d-b..d-a, f x
  -- With d=1, a=ε, b=1: ∫ x in ε..1, f(1-x) = ∫ x in 0..1-ε, f x
  have h := intervalIntegral.integral_comp_sub_left (fun x => 1 / Real.log x) (1:ℝ)
    (a := ε) (b := 1)
  -- h : ∫ x in ε..1, 1/log(1-x) = ∫ x in 1-1..1-ε, 1/log(x)
  -- We need: ∫ t in 0..1-ε, 1/log(t) = ∫ u in ε..1, 1/log(1-u)
  have h1 : (1:ℝ) - 1 = 0 := by ring
  rw [h1] at h
  exact h.symm

/-- For ε > 0, the integral ∫_{1+ε}^2 dt/log(t) equals ∫_ε^1 du/log(1+u)
    via the substitution t = 1 + u. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Connection/Variantb07c26041f5dfa1a0dc4ea10eb5ef51e132ae61930419938c85026adb59cb463.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a70c583ba061275efe406256d68d3e2ac49f3cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
