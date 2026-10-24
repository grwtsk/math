# isIdempotentElem_toSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b82e009-834a-3192-e09c-f23c4ba70055",
  "kind": "theorem",
  "lexical_name": "isIdempotentElem_toSubmodule",
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
  "slug": "isidempotentelem-tosubmodule--feb418044b0f4269da1cdb43",
  "source": {
    "blob": "89cbf3483ec5f1698a972a5ed838e92425eda108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 40,
    "path": "GRWTSK/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feb418044b0f4269da1cdb438ed207902c7b73bdf9d611ff8669398a228679f6",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b82e009-834a-3192-e09c-f23c4ba70055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIdempotentElem_toSubmodule (S : Subalgebra R A) :
    IsIdempotentElem S.toSubmodule := by
  apply le_antisymm
  · refine (mul_toSubmodule_le _ _).trans_eq ?_
    rw [sup_idem]
  · intro x hx1
    rw [← mul_one x]
    exact Submodule.mul_mem_mul hx1 (show (1 : A) ∈ S from one_mem S)

@[deprecated (since := "2025-01-12")] alias mul_self := isIdempotentElem_toSubmodule

/-- When `A` is commutative, `Subalgebra.mul_toSubmodule_le` is strict. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variantf83cf88f981fc1c3c1061fe6b6eca9d022be52f92b312102c1059350bc2cc7c8.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89cbf3483ec5f1698a972a5ed838e92425eda108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
