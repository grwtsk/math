# thetaASecondSeries_sub_thetaA_eq_eight_phi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c408be5a-a93d-8326-29ad-a33a0685d106",
  "kind": "theorem",
  "lexical_name": "thetaASecondSeries_sub_thetaA_eq_eight_phi",
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
  "slug": "thetaasecondseries-sub-thetaa-eq-eight-phi--b603e20caf0e6b2c906192ba",
  "source": {
    "blob": "de95741e9db97643230c3c0558d228aa9a97e8db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b603e20caf0e6b2c906192ba2224b84551b1383e406de38d1c3a653c7626c8d5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c408be5a-a93d-8326-29ad-a33a0685d106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaASecondSeries_sub_thetaA_eq_eight_phi (t : ℝ) :
    thetaASecondSeries t - thetaA t = 8 * thetaPhi t := by
  have hfirst : deriv thetaA = thetaADerivSeries := by
    funext x
    exact (hasDerivAt_thetaA x).deriv
  have h := thetaA_second_deriv_sub t
  rw [hfirst, (hasDerivAt_thetaADerivSeries t).deriv] at h
  exact h

/-- The explicit first-derivative series carries the exact lower-endpoint value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variantf085f7dfc76fee128d351fe744a4b36a76c1f4d82314f2bf73a12c1d0f1f29af.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de95741e9db97643230c3c0558d228aa9a97e8db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
