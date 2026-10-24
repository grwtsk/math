# real_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e339ca2c329121b417eb3bfa5ed61aca2ce16dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e4df21ee-534a-a326-2e21-aca4d9797568",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db92e535-aaae-ef5e-8406-77d50ae62b90",
  "kind": "theorem",
  "lexical_name": "real_laplace_integrable",
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
  "slug": "real-laplace-integrable--e22b6e8d649977ee104ff906",
  "source": {
    "blob": "1e339ca2c329121b417eb3bfa5ed61aca2ce16dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 174,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e22b6e8d649977ee104ff906bb2cad41b904a55daa321eec57c1950f24cddefe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db92e535-aaae-ef5e-8406-77d50ae62b90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem real_laplace_integrable
    (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A)
    (t : ℝ) (ht : 1 < t) :
    Integrable
      (fun A : ℝ ↦ Real.exp (-t * A))
      (sourceMeasure C) := by
  have h :=
    (exp_integrable C hpos (t : ℂ) (by simpa using ht)).norm
  simpa only [Complex.norm_exp, Complex.mul_re,
    Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero] using h

/-! ## Preservation of the exact off-line pole -/

/-- The finite correction is analytic at every positive shifted-zero center. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e339ca2c329121b417eb3bfa5ed61aca2ce16dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
