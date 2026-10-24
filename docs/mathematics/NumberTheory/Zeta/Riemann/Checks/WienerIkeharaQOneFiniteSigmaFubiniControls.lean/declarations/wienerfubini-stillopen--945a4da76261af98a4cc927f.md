# wienerFubini_stillOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:059bc857b78702a1caa89a9fccec2c301e83095688e0eb833f19daf36f2f5c93",
  "kind": "def",
  "lexical_name": "wienerFubini_stillOpen",
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
  "slug": "wienerfubini-stillopen--945a4da76261af98a4cc927f",
  "source": {
    "blob": "8cf39c7b33e14f4bba5cbd281b018f696e78e6e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 127,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:945a4da76261af98a4cc927fb3ceb3998064326157a7af8fadcc52a64c799a97",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:059bc857b78702a1caa89a9fccec2c301e83095688e0eb833f19daf36f2f5c93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wienerFubini_stillOpen : List String :=
  ["second Fourier pole integral at sigma>1: prove Fubini and exponential integration with identical frequency",
   "dominated sigma-downarrow-one arithmetic Fourier series: use actual Chebyshev O(N) and a uniform logarithmic kernel",
   "uniform bound_sum_log': for all T>=1, tsum Lambda(n)/n /(1+(log(n/T)/(2*pi))^2) <= (log 4+4)*(1+2*pi^2)",
   "Schwartz approximation: prove a uniform-in-T Fourier-weighted discarded-tail bound using the previous arithmetic estimate",
   "complete actual limiting_cor_schwartz and only then compose with checked Mellin and separately audited interval squeeze",
   "local exact-head Lean4.33 --wfail/trust0 and transitive axiom inspection for this new source"]

/-- Hostile nonimplications. The description strings carry NO proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf39c7b33e14f4bba5cbd281b018f696e78e6e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
