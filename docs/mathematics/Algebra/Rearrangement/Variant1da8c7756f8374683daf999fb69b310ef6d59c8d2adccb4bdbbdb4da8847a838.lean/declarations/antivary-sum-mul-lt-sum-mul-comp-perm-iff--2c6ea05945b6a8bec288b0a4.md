# Antivary.sum_mul_lt_sum_mul_comp_perm_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 492,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f8d1ba5-7a57-17d4-dc9e-5b994def0b2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9b8eaa1-3152-c450-928b-a820a62ce672",
  "kind": "theorem",
  "lexical_name": "Antivary.sum_mul_lt_sum_mul_comp_perm_iff",
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
  "slug": "antivary-sum-mul-lt-sum-mul-comp-perm-iff--2c6ea05945b6a8bec288b0a4",
  "source": {
    "blob": "d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 492,
    "path": "GRWTSK/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c6ea05945b6a8bec288b0a4c9b8ce9fad286fe0457f706910eaea94014595b5",
  "verification": {
    "reference": "docs/verification/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9b8eaa1-3152-c450-928b-a820a62ce672`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Antivary.sum_mul_lt_sum_mul_comp_perm_iff (hfg : Antivary f g) :
    ∑ i, f i • g i < ∑ i, f i • g (σ i) ↔ ¬Antivary f (g ∘ σ) :=
  hfg.sum_smul_lt_sum_smul_comp_perm_iff

/-- **Rearrangement Inequality**: Pointwise multiplication of `f` and `g` is minimized when `f` and
`g` antivary together. Stated by permuting the entries of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rearrangement/Variant1da8c7756f8374683daf999fb69b310ef6d59c8d2adccb4bdbbdb4da8847a838.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5eac084ef366e832d9c7e9e3e0dcaefe9d219dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
