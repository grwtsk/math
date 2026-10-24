# ValidAdversaryMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:030a7354c95da7a8a85800ee7c0f0c20a3d65ffaa0b76b74365fd8fc678e0d9f",
  "kind": "structure",
  "lexical_name": "ValidAdversaryMatrix",
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
  "slug": "validadversarymatrix--5017bfb2e735c0de38d21361",
  "source": {
    "blob": "947452e1d6ac21f618b8849cb5ccf67e1b0f15d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5017bfb2e735c0de38d213614bbcb3b3f10fae2442005c47a54428fa08cd9e36",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:030a7354c95da7a8a85800ee7c0f0c20a3d65ffaa0b76b74365fd8fc678e0d9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ValidAdversaryMatrix
    {Input : Type u} {Output : Type v} {Coordinate : Type w}
    (problem : OracleProblem Input Output Coordinate) where
  weights : Matrix Input Input ℂ
  hermitian : weights.conjTranspose = weights
  zero_on_equal_output :
    ∀ left right,
      problem.answer left = problem.answer right →
        weights left right = 0
  nonzero : weights ≠ 0

/--
A maximizing coordinate turns the finite denominator into an exact witnessed
maximum rather than an unaudited numeric claim.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdversaryInvariant/Variant81ade8ceaa333a999b856745096a45e209809297cf1f4a0c3e20bb1aef0eccff.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `947452e1d6ac21f618b8849cb5ccf67e1b0f15d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
