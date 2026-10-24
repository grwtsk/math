# unitStep_mellin_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3a31ca615bbd29a3bb459e7ab7e2d8dc7e5416b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62e812a6-d7d1-eb35-ec78-bb7d6937bd16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9967d483-c083-a27d-441f-88954908246e",
  "kind": "theorem",
  "lexical_name": "unitStep_mellin_integrable",
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
  "slug": "unitstep-mellin-integrable--bad48dab2eaf309ce1042623",
  "source": {
    "blob": "c3a31ca615bbd29a3bb459e7ab7e2d8dc7e5416b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bad48dab2eaf309ce1042623fb5ee8844709d8916c1a114e7ea73bd2aa586b2a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9967d483-c083-a27d-441f-88954908246e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitStep_mellin_integrable (s : ℂ) (hs : 0 < s.re) :
    IntegrableOn (fun x : ℝ => (if 1 ≤ x then (1 : ℂ) else 0) *
      (x : ℂ) ^ (-(s + 1))) (Ioi (0 : ℝ)) := by
  have hpow : (-(s + 1)).re < -1 := by
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  have hp : IntegrableOn (fun x : ℝ => (x : ℂ) ^ (-(s + 1))) (Ici (1 : ℝ)) := by
    rw [integrableOn_Ici_iff_integrableOn_Ioi]
    exact integrableOn_Ioi_cpow_of_lt hpow zero_lt_one
  have hset : Ici (1 : ℝ) ∩ Ioi 0 = Ici (1 : ℝ) := by ext x; simp; grind
  have hi := (integrableOn_indicator_iff (t := Ioi (0 : ℝ)) measurableSet_Ici).mpr
    (hset.symm ▸ hp)
  apply hi.congr
  filter_upwards [] with x
  simp only [Set.indicator, mem_Ici, ite_mul, one_mul, zero_mul]

/-- The unit step contributes the full constant term of the residual transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a31ca615bbd29a3bb459e7ab7e2d8dc7e5416b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
