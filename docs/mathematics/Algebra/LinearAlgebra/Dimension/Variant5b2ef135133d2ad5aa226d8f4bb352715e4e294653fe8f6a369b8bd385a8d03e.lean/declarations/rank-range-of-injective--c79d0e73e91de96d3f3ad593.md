# rank_range_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e03a8ae-7999-f1f7-01f2-d5e0e41927df",
  "kind": "theorem",
  "lexical_name": "rank_range_of_injective",
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
  "slug": "rank-range-of-injective--c79d0e73e91de96d3f3ad593",
  "source": {
    "blob": "103c093bdd16e05dce22b5e168af994e5c0046d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 210,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variant5b2ef135133d2ad5aa226d8f4bb352715e4e294653fe8f6a369b8bd385a8d03e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c79d0e73e91de96d3f3ad59333a834e596aacf89afdf3ffb1f2e7204cc1dba21",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dimension/Variant5b2ef135133d2ad5aa226d8f4bb352715e4e294653fe8f6a369b8bd385a8d03e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e03a8ae-7999-f1f7-01f2-d5e0e41927df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_range_of_injective (f : M →ₗ[R] M₁) (h : Injective f) :
    Module.rank R (LinearMap.range f) = Module.rank R M :=
  (LinearEquiv.ofInjective f h).rank_eq.symm
#align rank_eq_of_injective rank_range_of_injective

/-- Pushforwards of submodules along a `LinearEquiv` have the same dimension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dimension/Variant5b2ef135133d2ad5aa226d8f4bb352715e4e294653fe8f6a369b8bd385a8d03e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dimension/Variant5b2ef135133d2ad5aa226d8f4bb352715e4e294653fe8f6a369b8bd385a8d03e.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `103c093bdd16e05dce22b5e168af994e5c0046d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
