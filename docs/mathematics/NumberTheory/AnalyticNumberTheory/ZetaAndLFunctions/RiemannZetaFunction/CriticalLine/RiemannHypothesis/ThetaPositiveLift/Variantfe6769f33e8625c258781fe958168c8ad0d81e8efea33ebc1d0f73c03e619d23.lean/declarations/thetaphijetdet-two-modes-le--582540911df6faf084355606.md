# thetaPhiJetDet_two_modes_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db049ada-ed05-a0fd-bcbf-d4ef82fca553",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetDet_two_modes_le",
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
  "slug": "thetaphijetdet-two-modes-le--582540911df6faf084355606",
  "source": {
    "blob": "05e689e42438231e7c54fc20e76d4af109294f7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:582540911df6faf0843556069a2e470d0f17c8584b34c318ce0da10f1e94936f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db049ada-ed05-a0fd-bcbf-d4ef82fca553`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetDet_two_modes_le {A z : ℝ} (hA : 3 ≤ A) (hz : 0 ≤ z) :
    thetaPhiJetDet (fun k => thetaPhiJetPolynomial k A +
      4 * z * thetaPhiJetPolynomial k (4 * A)) ≤ -12607488 := by
  let x := A - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hA
  have he : A = x + 3 := by dsimp [x]; ring
  rw [he]
  have hid : -thetaPhiJetDet (fun k => thetaPhiJetPolynomial k (x + 3) +
      4 * z * thetaPhiJetPolynomial k (4 * (x + 3))) - 12607488 =
    (32514048*x + 32071680*x^2 + 16834560*x^3 + 5160960*x^4 + 884736*x^5 + 65536*x^6) +
    z * (46386266112 + 152209539072*x + 217469878272*x^2 + 178059608064*x^3 +
      91899740160*x^4 + 30706089984*x^5 + 6487670784*x^6 + 790953984*x^7 + 42467328*x^8) +
    z^2 * (5713915281408 + 17205319434240*x + 22780536422400*x^2 +
      17343647318016*x^3 + 8308626554880*x^4 + 2564439146496*x^5 +
      497724948480*x^6 + 55490641920*x^7 + 2717908992*x^8) +
    z^3 * (8710898319360 + 18430140874752*x + 16275745013760*x^2 +
      7679099535360*x^3 + 2041451642880*x^4 + 289910292480*x^5 + 17179869184*x^6) := by
    dsimp [thetaPhiJetDet, thetaPhiJetPolynomial]
    ring
  have hp : 0 ≤ -thetaPhiJetDet (fun k => thetaPhiJetPolynomial k (x + 3) +
      4 * z * thetaPhiJetPolynomial k (4 * (x + 3))) - 12607488 := by
    rw [hid]
    positivity
  linarith

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantfe6769f33e8625c258781fe958168c8ad0d81e8efea33ebc1d0f73c03e619d23.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e689e42438231e7c54fc20e76d4af109294f7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
