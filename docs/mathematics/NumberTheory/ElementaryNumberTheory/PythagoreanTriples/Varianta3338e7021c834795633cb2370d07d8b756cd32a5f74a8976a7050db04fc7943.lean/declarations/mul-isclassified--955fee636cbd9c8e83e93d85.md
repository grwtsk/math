# mul_isClassified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5be1ba662c7674a80f7812d8e40933b02bd9c4d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:454895e9-778e-8a32-9260-0ec9aa3d766b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ced2b8a9-ff88-d7c2-d1d0-3f849645679a",
  "kind": "theorem",
  "lexical_name": "mul_isClassified",
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
  "slug": "mul-isclassified--955fee636cbd9c8e83e93d85",
  "source": {
    "blob": "5be1ba662c7674a80f7812d8e40933b02bd9c4d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 118,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:955fee636cbd9c8e83e93d85057009af5cc33912f8283c375ff8c573d59b5558",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ced2b8a9-ff88-d7c2-d1d0-3f849645679a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_isClassified (k : ℤ) (hc : h.IsClassified) : (h.mul k).IsClassified := by
  obtain ⟨l, m, n, ⟨⟨rfl, rfl⟩ | ⟨rfl, rfl⟩, co⟩⟩ := hc
  · use k * l, m, n
    apply And.intro _ co
    left
    constructor <;> ring
  · use k * l, m, n
    apply And.intro _ co
    right
    constructor <;> ring
#align pythagorean_triple.mul_is_classified PythagoreanTriple.mul_isClassified

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5be1ba662c7674a80f7812d8e40933b02bd9c4d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
