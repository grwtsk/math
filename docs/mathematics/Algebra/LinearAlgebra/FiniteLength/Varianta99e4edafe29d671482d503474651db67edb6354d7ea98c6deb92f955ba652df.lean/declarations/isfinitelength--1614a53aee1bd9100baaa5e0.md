# IsFiniteLength

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd72e9bcff1dc129844093ba77eb4cce0dc2114a17aa12cc2894c2de3783b4f4",
  "kind": "inductive",
  "lexical_name": "IsFiniteLength",
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
  "slug": "isfinitelength--1614a53aee1bd9100baaa5e0",
  "source": {
    "blob": "328ec798e02d575791b0b94e87c569fec3da9810",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 38,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1614a53aee1bd9100baaa5e0f3cd15a05d20880cac491b49a02f3e7d4502a531",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd72e9bcff1dc129844093ba77eb4cce0dc2114a17aa12cc2894c2de3783b4f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive IsFiniteLength : ∀ (M : Type*) [AddCommGroup M] [Module R M], Prop
  | of_subsingleton {M} [AddCommGroup M] [Module R M] [Subsingleton M] : IsFiniteLength M
  | of_simple_quotient {M} [AddCommGroup M] [Module R M] {N : Submodule R M}
      [IsSimpleModule R (M ⧸ N)] : IsFiniteLength N → IsFiniteLength M

attribute [nontriviality] IsFiniteLength.of_subsingleton

variable {R} {M N : Type*} [AddCommGroup M] [Module R M] [AddCommGroup N] [Module R N]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteLength/Varianta99e4edafe29d671482d503474651db67edb6354d7ea98c6deb92f955ba652df.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `328ec798e02d575791b0b94e87c569fec3da9810` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
