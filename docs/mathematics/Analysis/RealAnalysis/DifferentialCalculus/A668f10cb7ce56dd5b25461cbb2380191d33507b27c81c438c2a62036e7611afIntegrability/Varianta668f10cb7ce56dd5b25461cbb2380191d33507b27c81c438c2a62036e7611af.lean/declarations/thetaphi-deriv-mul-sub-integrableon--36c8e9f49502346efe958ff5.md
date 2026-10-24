# thetaPhi_deriv_mul_sub_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edbaa65de160b3985d842ae7de804d57b3163cb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e885ad1-2d5c-fcd1-2274-60a72463e12d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b7e93ab-2056-ec0a-2664-8edfe4af269b",
  "kind": "theorem",
  "lexical_name": "thetaPhi_deriv_mul_sub_integrableOn",
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
  "slug": "thetaphi-deriv-mul-sub-integrableon--36c8e9f49502346efe958ff5",
  "source": {
    "blob": "edbaa65de160b3985d842ae7de804d57b3163cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611afIntegrability/Varianta668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36c8e9f49502346efe958ff5174831dc8a629394a42f94e991c6b10ac9985f72",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/A668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611afIntegrability/Varianta668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b7e93ab-2056-ec0a-2664-8edfe4af269b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_deriv_mul_sub_integrableOn {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t) := by
  have h0 : IntegrableOn (deriv thetaPhi) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 0
  have h1 : IntegrableOn (fun u => deriv thetaPhi u * u) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 1
  have h := (h1.sub (h0.mul_const t)).mono_set (Ici_subset_Ici.mpr ht)
  apply h.congr
  filter_upwards [] with u
  dsimp only [Pi.sub_apply]
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/A668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611afIntegrability/Varianta668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/A668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611afIntegrability/Varianta668f10cb7ce56dd5b25461cbb2380191d33507b27c81c438c2a62036e7611af.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edbaa65de160b3985d842ae7de804d57b3163cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
