# logDeriv_omegaW_one_sub_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9565d414385077f8d935726eee8ac85859b825c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/3701820a3e8211a721cf08ab4c763dba26f5f66ceffcdf5c4d56ada7010579f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86ba23c6-69f0-2283-a2c2-d212f29b5d80",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df4d07d7-d7ba-a00c-03de-4423c2a6af03",
  "kind": "theorem",
  "lexical_name": "logDeriv_omegaW_one_sub_conj",
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
  "slug": "logderiv-omegaw-one-sub-conj--b207e1b34ac2c2cb80a1dec5",
  "source": {
    "blob": "e9565d414385077f8d935726eee8ac85859b825c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant3701820a3e8211a721cf08ab4c763dba26f5f66ceffcdf5c4d56ada7010579f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b207e1b34ac2c2cb80a1dec5dfb9f3f06894881e97986d9e47bbe5885d2f91da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant3701820a3e8211a721cf08ab4c763dba26f5f66ceffcdf5c4d56ada7010579f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df4d07d7-d7ba-a00c-03de-4423c2a6af03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_omegaW_one_sub_conj {s : ℂ} (hs : s.im ≠ 0) :
    logDeriv omegaW (1 - conj s) = -conj (logDeriv omegaW s) := by
  have hs' : (conj s).im ≠ 0 := by simpa using hs
  rw [logDeriv_omegaW_one_sub hs', logDeriv_omegaW_conj hs]

/-- **the split**: logDeriv Ω = Γℝ′/Γℝ + W′/W where W ≠ 0 (off the real axis). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant3701820a3e8211a721cf08ab4c763dba26f5f66ceffcdf5c4d56ada7010579f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Omega/Variant3701820a3e8211a721cf08ab4c763dba26f5f66ceffcdf5c4d56ada7010579f8.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9565d414385077f8d935726eee8ac85859b825c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
