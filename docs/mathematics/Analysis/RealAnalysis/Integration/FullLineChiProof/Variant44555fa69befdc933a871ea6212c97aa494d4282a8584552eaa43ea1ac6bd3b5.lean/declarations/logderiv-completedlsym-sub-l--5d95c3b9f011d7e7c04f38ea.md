# logDeriv_completedLSym_sub_L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5876ac20-6ea0-e6f0-49fe-b6c2798aaef8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c5121c5-ddcf-6614-f74d-9103881d85a3",
  "kind": "theorem",
  "lexical_name": "logDeriv_completedLSym_sub_L",
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
  "slug": "logderiv-completedlsym-sub-l--5d95c3b9f011d7e7c04f38ea",
  "source": {
    "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 425,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d95c3b9f011d7e7c04f38eadd64cdef0688d5483fffb9f52ed20f35cf73468d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c5121c5-ddcf-6614-f74d-9103881d85a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_completedLSym_sub_L (hq : 1 < q) (hχ1 : χ ≠ 1) {s : ℂ} (hre : 0 < s.re)
    (hL : χ.LFunction s ≠ 0) :
    logDeriv (completedLSym χ) s - logDeriv χ.LFunction s = logDeriv (archChi q (parity χ)) s := by
  rw [logDeriv_completedLSym_split hq hχ1 hre hL]
  have hfun : (fun z => (q : ℂ) ^ (z / 2) * gammaFactor χ z) = archChi q (parity χ) := by
    funext z; rw [gammaFactor_eq_parity]; rfl
  rw [hfun]; ring

/-- the arch difference is the same for χ and χ⁻¹ (equal gammaFactor) — `harchdiff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416a67313657b74c4c490f7fc262e07c4d0ce9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
