# integral_psi'_Ioi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32d4ea06-c264-e460-9dbc-f7ecb54602de",
  "kind": "theorem",
  "lexical_name": "integral_psi'_Ioi_le",
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
  "slug": "integral-psi-ioi-le--1526eb6358132de12d425f3b",
  "source": {
    "blob": "18a17869e5475458258fce7c40508994c1898e52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1526eb6358132de12d425f3b483b864315ae78137ed8940ecae1bd2606ed6347",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d4ea06-c264-e460-9dbc-f7ecb54602de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_psi'_Ioi_le :
    ∫ r in Ioi 0, P.psi' T r ≤ 4 + 2 * Real.log (P.crho * P.L T / (4 * P.w)) :=
  Taper.integral_psi_Ioi_le hP.taper hP.one_le_w hwL
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Taper/Variant87702ab0c3dbcec08f483585152feb510843a3c011bab269b14222961e063889.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18a17869e5475458258fce7c40508994c1898e52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
