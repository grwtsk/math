# coe_mkOfOrthogonalEqBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97619439-135c-5b6c-a2a6-c7bec2138290",
  "kind": "theorem",
  "lexical_name": "coe_mkOfOrthogonalEqBot",
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
  "slug": "coe-mkoforthogonaleqbot--c328d3f6995a2b9391518cf6",
  "source": {
    "blob": "1f8ef57385bf24c42aab22ca7ebb64c7ce30a17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 569,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c328d3f6995a2b9391518cf67f858184bb9019b548d97bb39a780a2fce5d0463",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97619439-135c-5b6c-a2a6-c7bec2138290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem coe_mkOfOrthogonalEqBot (hsp : (span 𝕜 (Set.range v))ᗮ = ⊥) :
    ⇑(HilbertBasis.mkOfOrthogonalEqBot hv hsp) = v :=
  HilbertBasis.coe_mk hv _

-- Note : this should be `b.repr` composed with an identification of `lp (fun i : ι => 𝕜) p` with
-- `PiLp p (fun i : ι => 𝕜)` (in this case with `p = 2`), but we don't have this yet (July 2022).
/-- An orthonormal basis is a Hilbert basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant5aed3342153ac7ad3a6a7632f225e0460661e040011261265cccf4d18a4c2504.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f8ef57385bf24c42aab22ca7ebb64c7ce30a17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
