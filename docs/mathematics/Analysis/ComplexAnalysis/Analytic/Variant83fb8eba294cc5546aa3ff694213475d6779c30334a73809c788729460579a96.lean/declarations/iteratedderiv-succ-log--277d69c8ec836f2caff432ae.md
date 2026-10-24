# iteratedDeriv_succ_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d0e12902aba9858d53f2b65e6f4172e41b06be7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/83/83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:131eddd4-be8b-937e-8f77-78e71e9f960d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49fd2156-b09c-dad4-f144-4c85956acf51",
  "kind": "theorem",
  "lexical_name": "iteratedDeriv_succ_log",
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
  "slug": "iteratedderiv-succ-log--277d69c8ec836f2caff432ae",
  "source": {
    "blob": "7d0e12902aba9858d53f2b65e6f4172e41b06be7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 159,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variant83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:277d69c8ec836f2caff432ae65a63d76070aa4386e0216e4de2569756c6088d8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Analytic/Variant83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49fd2156-b09c-dad4-f144-4c85956acf51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedDeriv_succ_log {n : ℕ} {x : ℂ} (hx : x ∈ slitPlane) :
    iteratedDeriv (n + 1) log x = (-1 : ℂ) ^ n * n.factorial * x ^ (-(n : ℤ) - 1) := by
  have h_eq : deriv log =ᶠ[𝓝 x] Inv.inv := by
    filter_upwards [isOpen_slitPlane.mem_nhds hx] with y hy
    simp [Complex.deriv_log hy]
  rw [iteratedDeriv_succ', h_eq.iteratedDeriv_eq, iteratedDeriv_eq_iterate, iter_deriv_inv]
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Analytic/Variant83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Analytic/Variant83fb8eba294cc5546aa3ff694213475d6779c30334a73809c788729460579a96.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d0e12902aba9858d53f2b65e6f4172e41b06be7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
