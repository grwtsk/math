# hasDerivAt_thetaCenteredMomentJet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47fa5459-afaf-3518-3692-d497778dbf32",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_thetaCenteredMomentJet",
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
  "slug": "hasderivat-thetacenteredmomentjet--538ab41076920719d29c77f9",
  "source": {
    "blob": "187362e72a201445c3052ff2d4181eef7d9823e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 195,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:538ab41076920719d29c77f937a56d1b670c561a9b73fc08a9a59c149a18b896",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47fa5459-afaf-3518-3692-d497778dbf32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_thetaCenteredMomentJet (m : ℕ) (u : ℂ) :
    HasDerivAt (thetaCenteredMomentJet m) (thetaCenteredMomentJet (m + 1) u) u := by
  have hneg := (hasDerivAt_thetaPhiExpMoment m (-u)).comp u (hasDerivAt_id u).neg
  have h := ((hasDerivAt_thetaPhiExpMoment m u).add
    (hneg.const_mul ((-1 : ℂ) ^ m))).const_mul 4
  simpa only [thetaCenteredMomentJet, Pi.add_apply, Function.comp_apply, pow_succ,
    mul_assoc, mul_left_comm, mul_comm] using! h

/-- Iterated differentiation follows the proved integral derivative ladder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant36ddcb13157bfb7eed97b2ed088e61850fb302b2f0cd0fab5296b4fd78b4c0a6.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `187362e72a201445c3052ff2d4181eef7d9823e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
