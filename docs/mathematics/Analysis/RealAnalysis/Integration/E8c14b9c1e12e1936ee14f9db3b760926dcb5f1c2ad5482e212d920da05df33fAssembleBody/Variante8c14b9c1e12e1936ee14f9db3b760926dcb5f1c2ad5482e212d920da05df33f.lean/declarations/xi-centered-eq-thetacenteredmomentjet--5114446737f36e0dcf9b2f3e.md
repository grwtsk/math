# xi_centered_eq_thetaCenteredMomentJet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e86f449ec17ed1829d14882e117e57b848ce4e8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 9,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95fd1165-d3dd-1153-4a92-71116bcaf8c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7aa3beef-b0c8-0c99-ca0f-1c0908ace2d7",
  "kind": "theorem",
  "lexical_name": "xi_centered_eq_thetaCenteredMomentJet",
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
  "slug": "xi-centered-eq-thetacenteredmomentjet--5114446737f36e0dcf9b2f3e",
  "source": {
    "blob": "e86f449ec17ed1829d14882e117e57b848ce4e8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 9,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/E8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33fAssembleBody/Variante8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5114446737f36e0dcf9b2f3e7f75fa458922b30af0a9c7760be29e3e52f984fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/E8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33fAssembleBody/Variante8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7aa3beef-b0c8-0c99-ca0f-1c0908ace2d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_centered_eq_thetaCenteredMomentJet (u : ℂ) :
    XiToeplitz.xi ((1 : ℂ) / 2 + u) = thetaCenteredMomentJet 0 u := by
  rw [xi_centered_thetaPhi]
  have hp := thetaPhiExpMomentIntegrand_integrableOn 0 u
  have hm := thetaPhiExpMomentIntegrand_integrableOn 0 (-u)
  have hfun : (fun t : ℝ => (thetaPhi t : ℂ) * Complex.cosh (2 * u * (t : ℂ))) =
      fun t : ℝ =>
        (thetaPhiExpMomentIntegrand 0 u t + thetaPhiExpMomentIntegrand 0 (-u) t) / 2 := by
    funext t
    simp only [thetaPhiExpMomentIntegrand, pow_zero, mul_one, Complex.cosh]
    rw [show 2 * (-u) * (t : ℂ) = -(2 * u * (t : ℂ)) by ring]
    ring
  unfold thetaCenteredMomentJet thetaPhiExpMoment
  rw [hfun, integral_div, integral_add hp hm]
  simp only [pow_zero, one_mul]
  ring

/-- The even derivatives of the actual centered xi function are the exact
unnormalized theta moments, with outer factor eight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/E8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33fAssembleBody/Variante8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/E8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33fAssembleBody/Variante8c14b9c1e12e1936ee14f9db3b760926dcb5f1c2ad5482e212d920da05df33f.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e86f449ec17ed1829d14882e117e57b848ce4e8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
