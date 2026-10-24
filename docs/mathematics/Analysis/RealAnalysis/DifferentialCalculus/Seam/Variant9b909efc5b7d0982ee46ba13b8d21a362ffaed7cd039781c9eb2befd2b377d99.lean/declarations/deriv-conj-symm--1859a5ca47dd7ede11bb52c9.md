# deriv_conj_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16c53d82-1eba-9a05-85ee-0214d70a6c0f",
  "kind": "lemma",
  "lexical_name": "deriv_conj_symm",
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
  "slug": "deriv-conj-symm--1859a5ca47dd7ede11bb52c9",
  "source": {
    "blob": "58375321162bbfb67cb0b2b9ce5a1574c8ee46c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1859a5ca47dd7ede11bb52c987cf8f0570521ed08144f1b8219c79874d73108f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16c53d82-1eba-9a05-85ee-0214d70a6c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma deriv_conj_symm {f : ℂ → ℂ} (hf : Differentiable ℂ f)
    (h : ∀ z, f (conj z) = conj (f z)) (s : ℂ) : deriv f (conj s) = conj (deriv f s) := by
  have hd := ((hf s).hasDerivAt).conj_conj
  have hfun : (fun z => conj (f (conj z))) = f := funext fun z => by rw [h, Complex.conj_conj]
  have hd' : HasDerivAt f (conj (deriv f s)) (conj s) := by
    have := hd
    simp only [Function.comp_def] at this
    rwa [hfun] at this
  exact hd'.deriv

/-- ξ′(s̄) = conj ξ′(s). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58375321162bbfb67cb0b2b9ce5a1574c8ee46c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
