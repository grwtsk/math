# findim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8c1e43eaf555101bf034f2c3a0690715663ec66f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 361,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d12fa56-b44a-f1bb-0e32-e29777ca8ec1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0c43a730-52cc-8b97-52a3-7016f0aefa14",
  "kind": "theorem",
  "lexical_name": "findim",
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
  "slug": "findim--b3289d533ad3fa4aa33f0f34",
  "source": {
    "blob": "8c1e43eaf555101bf034f2c3a0690715663ec66f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 361,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3289d533ad3fa4aa33f0f349515965f800595a8794c16dc6fd4902960e42d94",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c43a730-52cc-8b97-52a3-7016f0aefa14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem findim (n : ℕ) [Fact (finrank ℝ E = n + 1)] : FiniteDimensional ℝ E :=
  fact_finiteDimensional_of_finrank_eq_succ n

/-- Variant of the stereographic projection, for the sphere in an `n + 1`-dimensional inner product
space `E`.  This version has codomain the Euclidean space of dimension `n`, and is obtained by
composing the original sterographic projection (`stereographic`) with an arbitrary linear isometry
from `(ℝ ∙ v)ᗮ` to the Euclidean space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c1e43eaf555101bf034f2c3a0690715663ec66f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
