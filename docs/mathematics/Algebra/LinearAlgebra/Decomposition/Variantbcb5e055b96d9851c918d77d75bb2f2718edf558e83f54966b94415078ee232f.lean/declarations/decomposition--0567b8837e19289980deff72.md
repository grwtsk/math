# Decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c36612759e0a338639fb20aa408ac29201dd6c4bce8845883f0b4cd2a608a1d",
  "kind": "class",
  "lexical_name": "Decomposition",
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
  "slug": "decomposition--0567b8837e19289980deff72",
  "source": {
    "blob": "5f73e80e0bd170a6e2e882b37df581335c150a1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0567b8837e19289980deff7292a6c92a1b0669172590e3a27e19d5e1312a7a5a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c36612759e0a338639fb20aa408ac29201dd6c4bce8845883f0b4cd2a608a1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Decomposition where
  decompose' : M → ⨁ i, ℳ i
  left_inv : Function.LeftInverse (DirectSum.coeAddMonoidHom ℳ) decompose'
  right_inv : Function.RightInverse (DirectSum.coeAddMonoidHom ℳ) decompose'

/-- `DirectSum.Decomposition` instances, while carrying data, are always equal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Decomposition/Variantbcb5e055b96d9851c918d77d75bb2f2718edf558e83f54966b94415078ee232f.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f73e80e0bd170a6e2e882b37df581335c150a1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
