# fk_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dcfa18f-17f7-8a1c-958c-817252070f4e",
  "kind": "lemma",
  "lexical_name": "fk_contDiff",
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
  "slug": "fk-contdiff--0bcd9e8ec71c374f9a64f8af",
  "source": {
    "blob": "e42ec40aaa1fba3380c379aefd9371d57526e89d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bcd9e8ec71c374f9a64f8af451e38984ed8e049c828e3d158010f180ef4646d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dcfa18f-17f7-8a1c-958c-817252070f4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fk_contDiff (hφC2 : ContDiff ℝ 2 (fun u => (P.phi T u : ℂ))) (k : ℤ) :
    ContDiff ℝ 2 (P.fk T k) := by
  unfold Params.fk
  apply hφC2.mul
  apply Complex.contDiff_exp.comp
  apply ContDiff.neg
  apply ContDiff.mul contDiff_const Complex.ofRealCLM.contDiff

/-- supp f_k ⊆ supp φ ⊆ [−L/2, L/2]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variant5594d73681909dbf40e206b745be897e736798d0e7552721bd85e84d909376cb.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42ec40aaa1fba3380c379aefd9371d57526e89d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
