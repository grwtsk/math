# centeredSeries_spectral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e4e0663-f326-7850-8eeb-4349a203a7d8",
  "kind": "theorem",
  "lexical_name": "centeredSeries_spectral",
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
  "slug": "centeredseries-spectral--6165fdb8d863c5a713319fc5",
  "source": {
    "blob": "a2a5a6b645892e9eb25c19137cf8f72530fdb9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 114,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6165fdb8d863c5a713319fc5f777201442a4bb130d37eb809fe8c1cab01b1d9a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e4e0663-f326-7850-8eeb-4349a203a7d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredSeries_spectral (z : ℂ) : centeredSeries (-z ^ 2) = spectralXi z := by
  have h := centeredSeries_sq (Complex.I * z)
  simpa [spectralXi, mul_pow, Complex.I_sq] using h

/-- The limiting spectral function is not identically zero: its value at zero is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/XiReconstruction/Varianta8f319fe88ecf8839399e21f3e56bf52b37cf2597a33ca48b89f013488a4dc3d.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a5a6b645892e9eb25c19137cf8f72530fdb9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
