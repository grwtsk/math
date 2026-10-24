# hostileLower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa7ae7aea320b11acbd135d975650017401d81edc3906f698acc11c104fdb9a0",
  "kind": "def",
  "lexical_name": "hostileLower",
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
  "slug": "hostilelower--5b95809d3a7935ea22d8bd58",
  "source": {
    "blob": "23eb42b83bf307c454f4a1811c2ef5aa4e74dc04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 282,
    "path": "GRWTSK/Algebra/GroupTheory/FiniteCommonJTransport/Variantb9e73482274e9129072ffe566c3398086dfbe2deca1f3cd88d042ac4e751d415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b95809d3a7935ea22d8bd582a409b00f4705521bdab9ddb372364d2faca23c8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FiniteCommonJTransport/Variantb9e73482274e9129072ffe566c3398086dfbe2deca1f3cd88d042ac4e751d415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa7ae7aea320b11acbd135d975650017401d81edc3906f698acc11c104fdb9a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hostileLower : (Matrix (Fin 2) (Fin 2) ℚ)ˣ where
  val := !![1, 0; 1, 1]
  inv := !![1, 0; -1, 1]
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]

/-- The shear sign flip is an involutive diagonal unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FiniteCommonJTransport/Variantb9e73482274e9129072ffe566c3398086dfbe2deca1f3cd88d042ac4e751d415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FiniteCommonJTransport/Variantb9e73482274e9129072ffe566c3398086dfbe2deca1f3cd88d042ac4e751d415.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23eb42b83bf307c454f4a1811c2ef5aa4e74dc04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
