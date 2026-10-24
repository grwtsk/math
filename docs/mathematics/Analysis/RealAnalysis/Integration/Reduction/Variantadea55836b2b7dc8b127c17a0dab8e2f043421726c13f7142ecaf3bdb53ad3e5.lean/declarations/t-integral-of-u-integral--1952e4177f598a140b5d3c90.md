# t_integral_of_u_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67494c807f64aaf882dd2b6b0edf366df83ba3f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/adea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9ab2e02-9fe6-7ddd-0fd8-a48cd0a6c142",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a3ef818-1537-f219-005c-9dc66288215c",
  "kind": "lemma",
  "lexical_name": "t_integral_of_u_integral",
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
  "slug": "t-integral-of-u-integral--1952e4177f598a140b5d3c90",
  "source": {
    "blob": "67494c807f64aaf882dd2b6b0edf366df83ba3f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1952e4177f598a140b5d3c9045e6d49c5882541b5e8d1a1bbbddca223c4b607e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a3ef818-1537-f219-005c-9dc66288215c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma t_integral_of_u_integral : ∃ t : R, algebraMap R K t = CK.t := by
  rcases r_integral_of_u_integral hCK hu with ⟨r, hr⟩
  refine IsIntegrallyClosed.isIntegral_iff.mp ⟨X ^ 2 +
    C ((integralModel R W).a₃ + r * (integralModel R W).a₁) * X +
    C (u ^ 6 * (integralModel R W').a₆ - (integralModel R W).a₆ - r * (integralModel R W).a₄
      - r ^ 2 * (integralModel R W).a₂ - r ^ 3), by monicity!, ?_⟩
  simp [hu, hr, ← hCK, integralModel_a₁_eq, integralModel_a₂_eq, integralModel_a₃_eq,
    integralModel_a₄_eq, integralModel_a₆_eq, variableChange_a₆]
  ring1

/-- A variable change over the fraction field between integral Weierstrass equations descends to the
base ring if its `u` coefficient descends to a unit of the base ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variantadea55836b2b7dc8b127c17a0dab8e2f043421726c13f7142ecaf3bdb53ad3e5.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67494c807f64aaf882dd2b6b0edf366df83ba3f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
