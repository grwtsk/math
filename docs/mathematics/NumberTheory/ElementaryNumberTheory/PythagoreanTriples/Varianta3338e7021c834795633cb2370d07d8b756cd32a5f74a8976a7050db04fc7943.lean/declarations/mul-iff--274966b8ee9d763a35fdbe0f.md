# mul_iff

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
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9707543d-7893-95bd-a98a-0e522ee1d415",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1a852de-f688-eb06-8a21-fbff442d32af",
  "kind": "theorem",
  "lexical_name": "mul_iff",
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
  "slug": "mul-iff--274966b8ee9d763a35fdbe0f",
  "source": {
    "blob": "5be1ba662c7674a80f7812d8e40933b02bd9c4d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:274966b8ee9d763a35fdbe0f3e2adf2f6a34671c0e3390e9a8cb82f12704f693",
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

Occurrence: `result:b1a852de-f688-eb06-8a21-fbff442d32af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_iff (k : ℤ) (hk : k ≠ 0) :
    PythagoreanTriple (k * x) (k * y) (k * z) ↔ PythagoreanTriple x y z := by
  refine' ⟨_, fun h => h.mul k⟩
  simp only [PythagoreanTriple]
  intro h
  rw [← mul_left_inj' (mul_ne_zero hk hk)]
  convert h using 1 <;> ring
#align pythagorean_triple.mul_iff PythagoreanTriple.mul_iff

/-- A Pythagorean triple `x, y, z` is “classified” if there exist integers `k, m, n` such that
either
 * `x = k * (m ^ 2 - n ^ 2)` and `y = k * (2 * m * n)`, or
 * `x = k * (2 * m * n)` and `y = k * (m ^ 2 - n ^ 2)`. -/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PythagoreanTriples/Varianta3338e7021c834795633cb2370d07d8b756cd32a5f74a8976a7050db04fc7943.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5be1ba662c7674a80f7812d8e40933b02bd9c4d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
