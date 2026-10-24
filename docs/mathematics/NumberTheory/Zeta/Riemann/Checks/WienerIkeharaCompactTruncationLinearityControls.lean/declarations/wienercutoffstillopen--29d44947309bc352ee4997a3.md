# wienerCutoffStillOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23acd77568b8507845f6c9c1e706d663d0451b7cef4c964e7c0dbbc105980a2b",
  "kind": "def",
  "lexical_name": "wienerCutoffStillOpen",
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
  "slug": "wienercutoffstillopen--29d44947309bc352ee4997a3",
  "source": {
    "blob": "352c8f5c0f4b8fc09e7ffae61592f403c8a2f42b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29d44947309bc352ee4997a381908ba86fb8ba2ef7d1d2e8381a4997c665fbe7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23acd77568b8507845f6c9c1e706d663d0451b7cef4c964e7c0dbbc105980a2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wienerCutoffStillOpen : List String :=
  ["prove for every weighted derivative order k,n the uniform Schwartz seminorm of g - cutoff_R*g tends to zero",
   "justify all Leibniz and inverse-radius derivative bounds for cutoff_R(x) = c(x/(R+1))",
   "obtain exact-head Lean 4.33 --wfail/trust0 axioms receipts for cutoff and remainder-linearity source",
   "combine checked compact-test Wiener limit with the quantitative continuous-seminorm error",
   "do not infer full Schwartz convergence from pointwise eventual equality alone",
   "maintain PR #965 interval squeeze as an independently unverified downstream route"]

end GRWTSK.RiemannHypothesis.Checks
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaCompactTruncationLinearityControls.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `352c8f5c0f4b8fc09e7ffae61592f403c8a2f42b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
