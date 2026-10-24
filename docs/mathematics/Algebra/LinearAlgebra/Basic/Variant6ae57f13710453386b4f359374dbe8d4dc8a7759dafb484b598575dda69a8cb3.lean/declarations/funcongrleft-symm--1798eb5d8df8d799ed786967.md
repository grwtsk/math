# funCongrLeft_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9e8d052-c482-60c4-c5f9-cbd5e811aaf6",
  "kind": "theorem",
  "lexical_name": "funCongrLeft_symm",
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
  "slug": "funcongrleft-symm--1798eb5d8df8d799ed786967",
  "source": {
    "blob": "4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 895,
    "line": 879,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1798eb5d8df8d799ed7869670c673d698ec68f82e7240fa630b6d61f17e051ec",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9e8d052-c482-60c4-c5f9-cbd5e811aaf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 879–895.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem funCongrLeft_symm (e : m ≃ n) : (funCongrLeft R M e).symm = funCongrLeft R M e.symm :=
  rfl

end LinearEquiv

end FunLeft

section Pi

namespace LinearEquiv

/-- The product over `S ⊕ T` of a family of modules is isomorphic to the product of
(the product over `S`) and (the product over `T`).

This is `Equiv.sumPiEquivProdPi` as a `LinearEquiv`.
-/
@[simps -fullyApplied +simpRhs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean#L879).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
