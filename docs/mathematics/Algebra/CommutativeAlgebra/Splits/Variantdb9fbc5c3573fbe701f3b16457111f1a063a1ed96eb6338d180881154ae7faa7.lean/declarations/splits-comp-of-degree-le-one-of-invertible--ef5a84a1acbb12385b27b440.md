# Splits.comp_of_degree_le_one_of_invertible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be655e0e-2700-d462-0727-9e5d7d21be4b",
  "kind": "theorem",
  "lexical_name": "Splits.comp_of_degree_le_one_of_invertible",
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
  "slug": "splits-comp-of-degree-le-one-of-invertible--ef5a84a1acbb12385b27b440",
  "source": {
    "blob": "0bb6e5015403e0b6ee1841e798625f679eaa30d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 217,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef5a84a1acbb12385b27b440273224c5ecaf40edc1abf95be3fa252548c30395",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be655e0e-2700-d462-0727-9e5d7d21be4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Splits.comp_of_degree_le_one_of_invertible {f g : R[X]} (hf : f.Splits)
    (hg : g.degree ≤ 1) (h : Invertible g.leadingCoeff) : (f.comp g).Splits :=
  hf.comp_of_natDegree_le_one_of_invertible (natDegree_le_of_degree_le hg) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variantdb9fbc5c3573fbe701f3b16457111f1a063a1ed96eb6338d180881154ae7faa7.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bb6e5015403e0b6ee1841e798625f679eaa30d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
