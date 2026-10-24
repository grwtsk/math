# packet_green

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3b22b44-76b5-f22b-8f6a-0575b7c49e7c",
  "kind": "theorem",
  "lexical_name": "packet_green",
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
  "slug": "packet-green--87d572e40893d889c9afc058",
  "source": {
    "blob": "631ceecaa18c38355f53eda10eba54e67df2ed01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variant7fcd5fa366b2ad13e5fda97a8bf71eff3f415d0e89dd3c27fe321e07de469e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87d572e40893d889c9afc058a175ce6cc6f8e488dc2b78fc55eb7a7a35580d20",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variant7fcd5fa366b2ad13e5fda97a8bf71eff3f415d0e89dd3c27fe321e07de469e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3b22b44-76b5-f22b-8f6a-0575b7c49e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packet_green {a b : ℝ} (ha : 0 < a) (hb : 0 < b)
    {Φ : ℝ → ℝ} (hΦ : ContDiff ℝ 2 Φ) (x : ℝ) :
    packetValue Φ x a b =
      ∫ u in 0..a + b, criticalDirichletTent (a + b) u b *
        deriv (deriv Φ) (u + (x - b)) := by
  let D : ℝ → ℝ := fun u => Φ (u + (x - b))
  have hD : ContDiff ℝ 2 D := hΦ.comp (contDiff_id.add contDiff_const)
  have hD1 : ContDiff ℝ 1 D := hD.of_le (by norm_num)
  have hd : deriv D = fun u => deriv Φ (u + (x - b)) :=
    funext (fun u => deriv_comp_add_const Φ (x - b) u)
  have hdd : deriv (deriv D) = fun u => deriv (deriv Φ) (u + (x - b)) := by
    rw [hd]
    exact funext (fun u => deriv_comp_add_const (deriv Φ) (x - b) u)
  have hi := packet_green_local ha hb hD1
    hD.deriv'.contDiffOn.absolutelyContinuousOnInterval
  have hp : packetValue D b a b = packetValue Φ x a b := by
    unfold packetValue D
    rw [show b + a + (x - b) = x + a by ring,
      show b - b + (x - b) = x - b by ring,
      show b + (x - b) = x by ring]
  rw [hp, hdd] at hi
  exact hi

/-- The tent mass is half the centered second moment, fixing the scaling. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variant7fcd5fa366b2ad13e5fda97a8bf71eff3f415d0e89dd3c27fe321e07de469e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CurvaturePacketCertificates/Variant7fcd5fa366b2ad13e5fda97a8bf71eff3f415d0e89dd3c27fe321e07de469e89.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `631ceecaa18c38355f53eda10eba54e67df2ed01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
