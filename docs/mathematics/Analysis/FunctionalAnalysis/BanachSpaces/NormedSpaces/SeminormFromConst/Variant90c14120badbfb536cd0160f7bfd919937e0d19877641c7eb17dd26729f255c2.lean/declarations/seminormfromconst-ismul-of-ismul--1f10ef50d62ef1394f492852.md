# seminormFromConst_isMul_of_isMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adaa2374-5d59-06e2-53ef-76d9df706164",
  "kind": "theorem",
  "lexical_name": "seminormFromConst_isMul_of_isMul",
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
  "slug": "seminormfromconst-ismul-of-ismul--1f10ef50d62ef1394f492852",
  "source": {
    "blob": "8a7ca4f366209893ca5b1f22c9147b13f64c5696",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 225,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f10ef50d62ef1394f49285220fdda64aed619d33410010bdcb52fdba6dd1c90",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adaa2374-5d59-06e2-53ef-76d9df706164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seminormFromConst_isMul_of_isMul {x : R} (hx : ∀ y : R, f (x * y) = f x * f y) (y : R) :
    seminormFromConst' hf1 hc hpm (x * y) =
      seminormFromConst' hf1 hc hpm x * seminormFromConst' hf1 hc hpm y :=
  have hlim : Tendsto (seminormFromConst_seq c f (x * y)) atTop
      (𝓝 (seminormFromConst' hf1 hc hpm x * seminormFromConst' hf1 hc hpm y)) := by
    rw [seminormFromConst_apply_of_isMul hf1 hc hpm hx]
    have hseq : seminormFromConst_seq c f (x * y) =
        fun n ↦ f x * seminormFromConst_seq c f y n := by
      ext n
      simp only [seminormFromConst_seq, mul_assoc, hx, mul_div_assoc]
    simpa [hseq] using (seminormFromConst_isLimit hf1 hc hpm y).const_mul _
  tendsto_nhds_unique (seminormFromConst_isLimit hf1 hc hpm (x * y)) hlim

/-- `seminormFromConst' hf1 hc hpm c = f c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variant90c14120badbfb536cd0160f7bfd919937e0d19877641c7eb17dd26729f255c2.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7ca4f366209893ca5b1f22c9147b13f64c5696` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
