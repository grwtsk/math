# zeroFree_reversePsiGate_to_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:694ef6ed-7fc4-539e-01d9-d9c41afbe3d0",
  "kind": "theorem",
  "lexical_name": "zeroFree_reversePsiGate_to_theta",
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
  "slug": "zerofree-reversepsigate-to-theta--bfabc5087852b4f567f2a590",
  "source": {
    "blob": "1563ac22421e936af1012ebfc5405b4f14c0f6d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 172,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfabc5087852b4f567f2a59076df355addd22583085b020c4475ea1f3e179529",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:694ef6ed-7fc4-539e-01d9-d9c41afbe3d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroFree_reversePsiGate_to_theta
    {ρ : ℝ}
    (hρhalf : (1 / 2 : ℝ) ≤ ρ)
    (hfree : RiemannZetaZeroFreeRightHalfPlane ρ)
    (hreverse : ZeroFreeToPsiPowerLogSqAt ρ) :
    AllDyadicThetaAtThreshold ρ :=
  psiAtThreshold_to_thetaAtThreshold hρhalf
    (classicalPsiPowerLogSqBound_to_psiAtThreshold
      (by linarith) (hreverse hfree))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReverseExplicitFormulaPsiGate.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1563ac22421e936af1012ebfc5405b4f14c0f6d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
