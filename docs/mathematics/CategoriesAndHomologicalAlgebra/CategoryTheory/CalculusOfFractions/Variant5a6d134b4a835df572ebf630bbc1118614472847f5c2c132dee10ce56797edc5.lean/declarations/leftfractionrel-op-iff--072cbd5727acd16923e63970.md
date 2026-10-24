# leftFractionRel_op_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47607cfb-bcd7-0d69-de4a-f83bfda10b2f",
  "kind": "lemma",
  "lexical_name": "leftFractionRel_op_iff",
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
  "slug": "leftfractionrel-op-iff--072cbd5727acd16923e63970",
  "source": {
    "blob": "c01295b1dc3a498f42a51e28c160231afd3a4311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 916,
    "line": 912,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:072cbd5727acd16923e639707dbe875cdc522553f5d56b052ce0758bd5cdf660",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47607cfb-bcd7-0d69-de4a-f83bfda10b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 912–916.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftFractionRel_op_iff
    {X Y : C} (z₁ z₂ : W.RightFraction X Y) :
    LeftFractionRel z₁.op z₂.op ↔ RightFractionRel z₁ z₂ :=
  ⟨fun h => h.unop, fun h => h.op⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean#L912).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c01295b1dc3a498f42a51e28c160231afd3a4311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
