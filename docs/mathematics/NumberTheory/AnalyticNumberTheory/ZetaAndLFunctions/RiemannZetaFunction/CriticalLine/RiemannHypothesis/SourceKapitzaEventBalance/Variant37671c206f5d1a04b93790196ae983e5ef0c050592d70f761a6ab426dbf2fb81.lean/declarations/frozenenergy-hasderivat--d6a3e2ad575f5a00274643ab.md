# frozenEnergy_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f83bc7d-ac59-c61f-37fd-a418b4e36b5e",
  "kind": "theorem",
  "lexical_name": "frozenEnergy_hasDerivAt",
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
  "slug": "frozenenergy-hasderivat--d6a3e2ad575f5a00274643ab",
  "source": {
    "blob": "94d79da02710c9c45885f8c7e6c27c0c1e75cffc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6a3e2ad575f5a00274643ab7fcef1e75e32b3e985eb210ebffe796269b44ab3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f83bc7d-ac59-c61f-37fd-a418b4e36b5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frozenEnergy_hasDerivAt (A : ℝ) (n : ℕ) (s : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (frozenEnergy A n)
      (-kapitzaWeight A s * frozenState A n s + smoothBalance A n s) s := by
  have hd := hasDerivAt_storage (hasDerivAt_weight s) (frozenState_hasDerivAt A n s)
    (sourceCorrector_hasDerivAt A s hA)
  have hc := sourceCorrector_deriv_cancel A s hA
  have hid := drift_identity (Real.exp (s / 2)) (frozenState A n s)
    (sourceForcing A s) (kapitzaKernel A s) (sourceCorrector A s)
    (deriv (sourceCorrector A) s)
  apply hd.congr_deriv
  dsimp only [smoothBalance, kapitzaWeight]
  have hzero : Real.exp (s / 2) * (kapitzaKernel A s + 2 * sourceForcing A s) +
      deriv (sourceCorrector A) s - sourceCorrector A s = 0 := by linarith only [hc]
  rw [hzero, zero_mul, add_zero] at hid
  linarith only [hid]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaEventBalance/Variant37671c206f5d1a04b93790196ae983e5ef0c050592d70f761a6ab426dbf2fb81.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94d79da02710c9c45885f8c7e6c27c0c1e75cffc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
