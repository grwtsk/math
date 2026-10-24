# PrimeCutDefectCapacity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:105473834fd161009d1fa91cb232fc1d6d9bac6d877176460c915d7199d48000",
  "kind": "structure",
  "lexical_name": "PrimeCutDefectCapacity",
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
  "slug": "primecutdefectcapacity--a8816d640eafc94e87b7fcf2",
  "source": {
    "blob": "29aa4f3eda58f4da252e77397eb1822350af5b69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8816d640eafc94e87b7fcf2dad0d3ac88818ce0414bd0ae3e947ce7cd02edd2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:105473834fd161009d1fa91cb232fc1d6d9bac6d877176460c915d7199d48000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrimeCutDefectCapacity
    (model : OperatorModel)
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  defect : Finset Prime → model.Operator
  selfAdjoint :
    ∀ cut,
      model.SelfAdjoint (defect cut)
  nonnegative :
    ∀ cut,
      model.Nonnegative (defect cut)
  boundedByIdentity :
    ∀ cut,
      OperatorLE model
        (defect cut) model.identity
  monotone :
    ∀ {source target},
      source ⊆ target →
      OperatorLE model
        (defect source) (defect target)
  digest : CapacityDigest

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveCapacity/Variant2598cbbb0c3ea08ebc2d572b35902818f50ac8a645c3ea9ac19c844c97789500.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29aa4f3eda58f4da252e77397eb1822350af5b69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
