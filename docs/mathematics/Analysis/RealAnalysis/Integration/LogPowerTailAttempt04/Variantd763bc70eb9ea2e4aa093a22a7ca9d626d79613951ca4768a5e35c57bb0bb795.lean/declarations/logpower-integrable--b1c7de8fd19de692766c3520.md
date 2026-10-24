# logPower_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:343ab223-30db-5b33-53b2-9abba60ff886",
  "kind": "theorem",
  "lexical_name": "logPower_integrable",
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
  "slug": "logpower-integrable--b1c7de8fd19de692766c3520",
  "source": {
    "blob": "58a0621214f7122b9acf3f957a828e0eb879b2ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1c7de8fd19de692766c352008f45152ca8f4fda29c914e0be5723a99c4c4a97",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:343ab223-30db-5b33-53b2-9abba60ff886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logPower_integrable : IntegrableOn logPower (Ioi 2) := by
  exact integrableOn_Ioi_deriv_of_nonneg'
    (fun x hx => primitive_hasDerivAt (by have hx2 : 2 ≤ x := hx; linarith))
    (fun x hx => logPower_nonneg hx.le) primitive_tendsto_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantd763bc70eb9ea2e4aa093a22a7ca9d626d79613951ca4768a5e35c57bb0bb795.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58a0621214f7122b9acf3f957a828e0eb879b2ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
