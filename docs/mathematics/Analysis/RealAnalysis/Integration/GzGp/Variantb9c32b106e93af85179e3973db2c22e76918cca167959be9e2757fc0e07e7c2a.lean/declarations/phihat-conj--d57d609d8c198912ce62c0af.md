# phiHat_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d2f4b6cb9a60cd0a1a29c4c32fe8f2ed9d804b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d2acaf2-e48a-82fd-0f23-1481ab4166c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc547931-87a1-772c-a673-2975ed99a8bd",
  "kind": "lemma",
  "lexical_name": "phiHat_conj",
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
  "slug": "phihat-conj--d57d609d8c198912ce62c0af",
  "source": {
    "blob": "1d2f4b6cb9a60cd0a1a29c4c32fe8f2ed9d804b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d57d609d8c198912ce62c0afc03899ff987597cc47e2acdcc81b2797370687f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc547931-87a1-772c-a673-2975ed99a8bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma phiHat_conj (z : ℂ) : P.phiHat T (conj z) = conj (P.phiHat T z) := by
  show (∫ u : ℝ, (P.phi T u : ℂ) * cexp (I * conj z * (u : ℂ)))
      = conj (∫ u : ℝ, (P.phi T u : ℂ) * cexp (I * z * (u : ℂ)))
  calc (∫ u : ℝ, (P.phi T u : ℂ) * cexp (I * conj z * (u : ℂ)))
      = ∫ u : ℝ, (fun v : ℝ => conj ((P.phi T v : ℂ) * cexp (I * z * (v : ℂ)))) (-u) := by
        congr 1
        ext u
        simp only [map_mul, Complex.conj_ofReal, ← Complex.exp_conj, Complex.conj_I,
          phi_neg, Complex.ofReal_neg, map_neg]
        congr 2
        ring
    _ = ∫ v : ℝ, conj ((P.phi T v : ℂ) * cexp (I * z * (v : ℂ))) :=
        integral_comp_neg_real (fun v : ℝ => conj ((P.phi T v : ℂ) * cexp (I * z * (v : ℂ))))
    _ = conj (∫ v : ℝ, (P.phi T v : ℂ) * cexp (I * z * (v : ℂ))) := integral_conj

/-- φ̂ is real on the real axis: φ̂(r) = φ̂_ℝ(r). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/GzGp/Variantb9c32b106e93af85179e3973db2c22e76918cca167959be9e2757fc0e07e7c2a.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d2f4b6cb9a60cd0a1a29c4c32fe8f2ed9d804b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
