# dirichletPrincipalIndicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14a7b24244c3fde24fe6c2505fe69802bf24b1e89acfca87f48958e9bf856282",
  "kind": "def",
  "lexical_name": "dirichletPrincipalIndicator",
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
  "slug": "dirichletprincipalindicator--a10651478650ead8ecdbef42",
  "source": {
    "blob": "e228e431515237c401c2c34448f65f2d0d2cb782",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a10651478650ead8ecdbef42cc22ad92615708e7ed2b10055fc02ed965cbf1e7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14a7b24244c3fde24fe6c2505fe69802bf24b1e89acfca87f48958e9bf856282`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dirichletPrincipalIndicator
    {q : ℕ} (chi : DirichletCharacter ℂ q) : ℂ :=
  by
    classical
    exact if chi = 1 then 1 else 0

/-- The finite twisted Chebyshev sum through the integer cutoff `x`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CenteredPsi/Variantddfe514a5e8b72c9fc3f882fe513ecd713650d79e37b2b0807c0b73318e1d68a.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e228e431515237c401c2c34448f65f2d0d2cb782` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
