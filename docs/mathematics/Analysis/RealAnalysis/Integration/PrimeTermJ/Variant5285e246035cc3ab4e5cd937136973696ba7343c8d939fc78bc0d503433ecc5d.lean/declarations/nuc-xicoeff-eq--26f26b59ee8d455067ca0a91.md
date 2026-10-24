# nuc_xiCoeff_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d443af7-7940-16d6-c2b8-e4dcf31e2dda",
  "kind": "theorem",
  "lexical_name": "nuc_xiCoeff_eq'",
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
  "slug": "nuc-xicoeff-eq--26f26b59ee8d455067ca0a91",
  "source": {
    "blob": "c7c382365cdd9b9734aa959d042d521f2c42c975",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variant5285e246035cc3ab4e5cd937136973696ba7343c8d939fc78bc0d503433ecc5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26f26b59ee8d455067ca0a91701af2e4b05fd170a1e274bda7169e0a97696c9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeTermJ/Variant5285e246035cc3ab4e5cd937136973696ba7343c8d939fc78bc0d503433ecc5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d443af7-7940-16d6-c2b8-e4dcf31e2dda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nuc_xiCoeff_eq' (X : ℝ) (Λs : ℂ) (τ : ℝ) :
    nuc X (xiCoeff Λs) τ = nuX X τ + Pc X (fun N => xiCoeff Λs N + ((Λ N : ℝ) : ℂ)) τ := by
  have hsplit : Pc X (xiCoeff Λs) τ
      = Pc X (fun N => -((Λ N : ℝ) : ℂ)) τ + Pc X (fun N => xiCoeff Λs N + ((Λ N : ℝ) : ℂ)) τ := by
    rw [← Pc_add]
    exact Pc_congr (fun N _ => by ring) τ
  simp only [nuc, nucW, nuX, one_mul]
  rw [hsplit, Pc_neg_vonMangoldt]
  ring

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeTermJ/Variant5285e246035cc3ab4e5cd937136973696ba7343c8d939fc78bc0d503433ecc5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variant5285e246035cc3ab4e5cd937136973696ba7343c8d939fc78bc0d503433ecc5d.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7c382365cdd9b9734aa959d042d521f2c42c975` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
