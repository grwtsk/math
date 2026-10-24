# domain_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c83a98b0-6914-a04c-c660-1c652f9ff0dd",
  "kind": "theorem",
  "lexical_name": "domain_nontrivial",
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
  "slug": "domain-nontrivial--3259ea42e7091e101e1c6524",
  "source": {
    "blob": "ce19ba0a4b152326e860fc0d6ded2aa6d3f96c6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3259ea42e7091e101e1c65245e22385b6b60975cc61d2e01a810d6c6e4e81b88",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c83a98b0-6914-a04c-c660-1c652f9ff0dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domain_nontrivial [Zero M₀'] [One M₀'] (f : M₀' → M₀) (zero : f 0 = 0) (one : f 1 = 1) :
    Nontrivial M₀' :=
  ⟨⟨0, 1, mt (congr_arg f) <| by
    rw [zero, one]
    exact zero_ne_one⟩⟩

@[deprecated (since := "2024-12-07")] alias pullback_nonzero := domain_nontrivial

section GroupWithZero

variable {G₀ : Type*} [GroupWithZero G₀] {a : G₀}

-- Porting note: used `simpa` to prove `False` in lean3
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NeZero/Variant1d46d2f095e56ab67da5636c38cc52be929a55e445ed5538c9135508233da68f.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce19ba0a4b152326e860fc0d6ded2aa6d3f96c6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
