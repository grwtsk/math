# intrinsicPositive_iff_quotientConvention

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03d19f9b-133c-f35a-6f01-f366bce0dc28",
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
  "slug": "intrinsicpositive-iff-quotientconvention--a019a72df32997167fdf8d8a",
  "source": {
    "blob": "5190ec75a867dd9c6d1ac6488dfab7b54ce1642a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a019a72df32997167fdf8d8aecb4d8cc96ca9a125f230fb3697a59ac8a9d6968",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03d19f9b-133c-f35a-6f01-f366bce0dc28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–162.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant88174992f466e50b024f20fa33b2f0604ad398aac2585b7d713ffd7f7238504a.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5190ec75a867dd9c6d1ac6488dfab7b54ce1642a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
