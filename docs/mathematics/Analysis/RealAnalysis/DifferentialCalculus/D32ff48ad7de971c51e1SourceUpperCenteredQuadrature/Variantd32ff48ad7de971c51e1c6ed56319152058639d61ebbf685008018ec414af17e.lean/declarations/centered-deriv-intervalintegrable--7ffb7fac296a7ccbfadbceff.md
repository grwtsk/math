# centered_deriv_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401fa767dd75e73aa853915ac1e24e0a8841c97f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 29,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65b2e817-2602-700b-cbc2-b850075eb02d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36857a03-8115-af93-fb32-d79500d1a757",
  "kind": "theorem",
  "lexical_name": "centered_deriv_intervalIntegrable",
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
  "slug": "centered-deriv-intervalintegrable--7ffb7fac296a7ccbfadbceff",
  "source": {
    "blob": "401fa767dd75e73aa853915ac1e24e0a8841c97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ffb7fac296a7ccbfadbceff4a9e3bb7e29a63ff4ce715c35b7113e9184ce709",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36857a03-8115-af93-fb32-d79500d1a757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_deriv_intervalIntegrable (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f) (a b : ℝ) :
    IntervalIntegrable (fun u => centeredSawtooth u * deriv f u) volume a b := by
  have he : (fun u => centeredSawtooth u * deriv f u) =
      (fun u => Int.fract u * deriv f u - deriv f u / 2) := by
    funext u
    unfold centeredSawtooth
    ring
  rw [he]
  exact (fract_deriv_intervalIntegrable f hf a b).sub
    (((hf.continuous_deriv_one).intervalIntegrable a b).div_const 2)

/-- Subtracting the actual cell below one and centering keeps both endpoint half samples. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401fa767dd75e73aa853915ac1e24e0a8841c97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
