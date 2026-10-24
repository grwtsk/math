# charFn_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39b91397-bd8e-ee71-00f7-08f33f41ec87",
  "kind": "theorem",
  "lexical_name": "charFn_eq_zero",
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
  "slug": "charfn-eq-zero--2f7280839dca86e18e694edc",
  "source": {
    "blob": "7c86fa2c9e8239dd99ddb9d25368c5e573aa70b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 126,
    "path": "GRWTSK/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f7280839dca86e18e694edc5b5bf71cab1c76c5ea65fb33a78c2fc9e97b2866",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39b91397-bd8e-ee71-00f7-08f33f41ec87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem charFn_eq_zero [Nontrivial Y] (x : X) (hU : IsClopen U) : charFn Y hU x = (0 : Y) ↔ x ∉ U :=
  Set.indicator_eq_zero_iff_not_mem _
#align locally_constant.char_fn_eq_zero LocallyConstant.charFn_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Algebra/Variantf986d1f530fc0b3ecf7032d817582a39d8ce27de94033cd48eca1e9de47bd59b.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c86fa2c9e8239dd99ddb9d25368c5e573aa70b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
