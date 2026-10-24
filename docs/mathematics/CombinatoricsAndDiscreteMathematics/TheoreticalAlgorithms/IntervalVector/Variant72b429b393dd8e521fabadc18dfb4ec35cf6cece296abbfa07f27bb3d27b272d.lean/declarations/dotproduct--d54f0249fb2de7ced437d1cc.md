# dotProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8908d211a298c4febb79329bde605df5b5e05f1b159c7ff2999a2d7ed2dce1da",
  "kind": "def",
  "lexical_name": "dotProduct",
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
  "slug": "dotproduct--d54f0249fb2de7ced437d1cc",
  "source": {
    "blob": "b46dd340c64d5daaa81f7256a942bf8b013b3ff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d54f0249fb2de7ced437d1cc522e4e2cb016fe3dd05e1b1fb56294692182139c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8908d211a298c4febb79329bde605df5b5e05f1b159c7ff2999a2d7ed2dce1da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def dotProduct (weights : List ℚ) (inputs : IntervalVector) (prec : Int := -53) : IntervalDyadic :=
  match weights, inputs with
  | [], [] => IntervalDyadic.singleton (Core.Dyadic.ofInt 0)
  | w :: ws, I :: Is =>
      IntervalDyadic.add (scalarMulInterval w I prec) (dotProduct ws Is prec)
  | _, _ => IntervalDyadic.singleton (Core.Dyadic.ofInt 0)  -- dimension mismatch fallback

/-- Helper: real dot product of two lists -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IntervalVector/Variant72b429b393dd8e521fabadc18dfb4ec35cf6cece296abbfa07f27bb3d27b272d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b46dd340c64d5daaa81f7256a942bf8b013b3ff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
