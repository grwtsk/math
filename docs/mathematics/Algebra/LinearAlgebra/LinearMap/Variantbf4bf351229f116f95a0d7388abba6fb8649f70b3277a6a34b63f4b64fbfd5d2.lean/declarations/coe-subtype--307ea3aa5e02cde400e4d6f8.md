# coe_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f18906e-0dce-dd2f-8e4c-47868fdc5be0",
  "kind": "theorem",
  "lexical_name": "coe_subtype",
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
  "slug": "coe-subtype--307ea3aa5e02cde400e4d6f8",
  "source": {
    "blob": "80480a50590e0d19ba4fe3dc863523898200a1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:307ea3aa5e02cde400e4d6f8d77956f733a14a2391d5717beaae369096e80f13",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f18906e-0dce-dd2f-8e4c-47868fdc5be0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem coe_subtype : (SMulMemClass.subtype S' : S' → M) = Subtype.val :=
  rfl

@[deprecated (since := "2025-02-18")]
protected alias coeSubtype := SMulMemClass.coe_subtype

end SMulMemClass

namespace Submodule

section AddCommMonoid

variable [Semiring R] [AddCommMonoid M]

-- We can infer the module structure implicitly from the bundled submodule,
-- rather than via typeclass resolution.
variable {module_M : Module R M}
variable {p q : Submodule R M}
variable {r : R} {x y : M}
variable (p)

/-- Embedding of a submodule `p` to the ambient space `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variantbf4bf351229f116f95a0d7388abba6fb8649f70b3277a6a34b63f4b64fbfd5d2.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80480a50590e0d19ba4fe3dc863523898200a1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
