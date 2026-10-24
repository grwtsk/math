# HasDirichletDensity.nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72a3159c170207bd01e093f015bfe6ff2c193d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d5d3456-5eaa-a3b7-39c9-1eaf8dfcd414",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d033cb75-fa77-0f03-a566-ebf1a1a64acb",
  "kind": "theorem",
  "lexical_name": "HasDirichletDensity.nonneg",
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
  "slug": "hasdirichletdensity-nonneg--9cc905eb0fac141ad6778634",
  "source": {
    "blob": "72a3159c170207bd01e093f015bfe6ff2c193d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 117,
    "path": "GRWTSK/NumberTheory/DirichletDensity/Variant5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cc905eb0fac141ad6778634b1011cb587a5447d0c4a6245697192c5bc91d85d",
  "verification": {
    "reference": "docs/verification/NumberTheory/DirichletDensity/Variant5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d033cb75-fa77-0f03-a566-ebf1a1a64acb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasDirichletDensity.nonneg {δ : ℝ} (h : S.HasDirichletDensity δ) :
    0 ≤ δ :=
  ge_of_tendsto h <| Eventually.of_forall fun s ↦
    div_nonneg (S.primeIdealZetaSum_nonneg s) (univ.primeIdealZetaSum_nonneg s)

variable (S) in
/-- The Dirichlet density of `S` is nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/DirichletDensity/Variant5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DirichletDensity/Variant5529f6084f8580c48db6cb18c2063ac3f02829e4d74eabf806aa508e1066f5ab.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a3159c170207bd01e093f015bfe6ff2c193d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
