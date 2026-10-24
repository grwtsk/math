# intrinsicPositive_iff_quotientConvention

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da0e19398731813805fb287f497f41500ff753d2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3919088-cc24-ace1-f8dd-d863a071cf3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bbd7312-0a55-5e5a-0a43-16e061867650",
  "kind": "theorem",
  "lexical_name": "intrinsicPositive_iff_quotientConvention",
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
  "slug": "intrinsicpositive-iff-quotientconvention--6f6844f2f2b9746097ad8a30",
  "source": {
    "blob": "da0e19398731813805fb287f497f41500ff753d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 144,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f6844f2f2b9746097ad8a3076cf2d1aa0ad00e11f0ed16fa38e196125abc14d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bbd7312-0a55-5e5a-0a43-16e061867650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intrinsicPositive_iff_quotientConvention (P : IntrinsicPlane k n) :
    IntrinsicPositive P ↔
      QuotientConventionPositive (k := k) (intrinsicToQuotientConvention P) := by
  constructor
  · rintro ⟨A, hA, hp⟩
    exact ⟨A, congrArg intrinsicToQuotientConvention hA, hp⟩
  · rintro ⟨A, hA, hp⟩
    refine ⟨A, Subtype.ext ?_, hp⟩
    exact congrArg (fun Q : QuotientPlane (n - k) n => Q.toSubmodule) hA

/-- The full subspace has quotient rank zero, in every ambient dimension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant91f1c599c207c5db1365e8f321bae59ba0e506df107711b9902f97c3db91a54f.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da0e19398731813805fb287f497f41500ff753d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
