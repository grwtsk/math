# exponential_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58b29b6c816f3293fa0eb1668353b58fbec6f60a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 20,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab5b38c2-3dc2-5bd4-fa29-f7c27e7a994f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:310f8553-ec61-9a84-1ad2-fa872649ea3a",
  "kind": "theorem",
  "lexical_name": "exponential_split",
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
  "slug": "exponential-split--9a2d2b11a38bf18d898fe285",
  "source": {
    "blob": "58b29b6c816f3293fa0eb1668353b58fbec6f60a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 20,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a2d2b11a38bf18d898fe28500524dd11fc30efe701883ef0c38d076e1b6329e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:310f8553-ec61-9a84-1ad2-fa872649ea3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exponential_split (n : ℕ) (hn : 1 ≤ n) (z : ℂ) :
    Complex.exp (-(1 / 2 + z) * (Real.log (n : ℝ) : ℂ)) =
      (n : ℂ)⁻¹ * Complex.exp ((1 / 2 - z) * (Real.log (n : ℝ) : ℂ)) := by
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (show 0 < n by omega)
  have he : Complex.exp (-(Real.log (n : ℝ) : ℂ)) = (n : ℂ)⁻¹ := by
    rw [← Complex.ofReal_neg, ← Complex.ofReal_exp, Real.exp_neg,
      Real.exp_log hn0, Complex.ofReal_inv, Complex.ofReal_natCast]
  rw [show -(1 / 2 + z) * (Real.log (n : ℝ) : ℂ) =
      -(Real.log (n : ℝ) : ℂ) + (1 / 2 - z) * (Real.log (n : ℝ) : ℂ) by ring,
    Complex.exp_add, he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b29b6c816f3293fa0eb1668353b58fbec6f60a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
