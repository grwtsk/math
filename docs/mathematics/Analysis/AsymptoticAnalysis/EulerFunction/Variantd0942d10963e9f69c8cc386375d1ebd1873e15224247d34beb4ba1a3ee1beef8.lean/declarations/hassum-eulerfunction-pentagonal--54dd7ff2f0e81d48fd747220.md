# hasSum_eulerFunction_pentagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d76698d-e307-c432-7853-c75287a36141",
  "kind": "theorem",
  "lexical_name": "hasSum_eulerFunction_pentagonal",
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
  "slug": "hassum-eulerfunction-pentagonal--54dd7ff2f0e81d48fd747220",
  "source": {
    "blob": "6716622248c8a860cefda6fa8ef560265949dadf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 122,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54dd7ff2f0e81d48fd747220ab3c82e738615a4adb72819a227d45d026cce998",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d76698d-e307-c432-7853-c75287a36141`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_eulerFunction_pentagonal {x : R} (hx : ‖x‖ < 1) :
    HasSum (fun k ↦ k.negOnePow * x ^ pentagonal k) (eulerFunction x) := by
  simpa [pentagonal_injective, PowerSeries.coeff_pentagonalSeries_mul_eq_extend] using
    hasSum_eulerFunction_pentagonalSeries hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/EulerFunction/Variantd0942d10963e9f69c8cc386375d1ebd1873e15224247d34beb4ba1a3ee1beef8.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6716622248c8a860cefda6fa8ef560265949dadf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
