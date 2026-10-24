# injective_or_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40a9a4cc-161d-1c7a-594d-b5087c895cb4",
  "kind": "theorem",
  "lexical_name": "injective_or_eq_zero",
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
  "slug": "injective-or-eq-zero--f13335e3777a87bbb9f63766",
  "source": {
    "blob": "90f481d3934327f882eb7fe9f4db9d4008738109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 431,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f13335e3777a87bbb9f63766215dc625f6e483a419bc25c8ad21ce7b0a2714b0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40a9a4cc-161d-1c7a-594d-b5087c895cb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_or_eq_zero [IsSimpleModule R M] (f : M →ₗ[R] N) :
    Function.Injective f ∨ f = 0 := by
  rw [← ker_eq_bot, ← ker_eq_top]
  apply eq_bot_or_eq_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1960ceea8cde9bccb3f6ef84e1b78829abb31bc112921b9c14e3ef77b801b776.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f481d3934327f882eb7fe9f4db9d4008738109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
