# center_power_helper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:887943ea-0959-2546-c3f6-cfe415d0d3c3",
  "kind": "lemma",
  "lexical_name": "center_power_helper",
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
  "slug": "center-power-helper--6523f7e785cbacef91303e31",
  "source": {
    "blob": "2c75c5598790548212086143fa75022d8daafb3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6523f7e785cbacef91303e312e189fa915c229e77fa7f0f218e7330b0a661afe",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:887943ea-0959-2546-c3f6-cfe415d0d3c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma center_power_helper {k : ℝ} (hk : 1 ≤ k) (i : Fin 8)
    (hlog : |Real.log k-logCenter i| ≤ logRadius)
    (harg : (14 : ℝ)*|logCenter i| ≤ 32)
    (hround : |(complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i).re|+
      |(complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i).im| ≤ 1/16777216) :
    ‖(k : ℂ)^(-center)-sample i‖ ≤ sampleRadius := by
  let e : RealLogEnclosure k := ⟨logCenter i,logRadius,by norm_num [logRadius],hlog⟩
  have p := negativePowerEnclosureOfBounds hk e center (by norm_num [center])
    128 14 32 center_norm_le (by norm_num [e,logRadius]) harg (by norm_num)
  have hp := p.encloses
  change ‖(k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ))‖ ≤
    2*(14*logRadius)+complexExpTaylorRadius 128 32 at hp
  have hr := (Complex.norm_le_abs_re_add_abs_im _).trans hround
  have htri : ‖(k : ℂ)^(-center)-sample i‖ ≤
      ‖(k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ))‖+
      ‖complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i‖ := by
    convert norm_add_le ((k : ℂ)^(-center)-complexExpTaylor 128 (-center*(logCenter i : ℂ)))
      (complexExpTaylor 128 (-center*(logCenter i : ℂ))-sample i) using 1 <;> ring
  have hb : 2*(14*logRadius)+complexExpTaylorRadius 128 32+1/16777216 ≤ sampleRadius := by
    norm_num [logRadius, sampleRadius, complexExpTaylorRadius]
  linarith

/-- These seven large finite arithmetic proofs require an actual future replay.
They are proof scripts, not a trust grant to the accompanying JSON. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffEightJetData.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c75c5598790548212086143fa75022d8daafb3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
