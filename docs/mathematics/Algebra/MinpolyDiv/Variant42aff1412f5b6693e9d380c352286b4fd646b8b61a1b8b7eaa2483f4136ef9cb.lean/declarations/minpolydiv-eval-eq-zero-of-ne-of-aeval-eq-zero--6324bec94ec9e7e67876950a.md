# minpolyDiv_eval_eq_zero_of_ne_of_aeval_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb5b4bb0-2a32-3c26-41c4-34347ad34f16",
  "kind": "lemma",
  "lexical_name": "minpolyDiv_eval_eq_zero_of_ne_of_aeval_eq_zero",
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
  "slug": "minpolydiv-eval-eq-zero-of-ne-of-aeval-eq-zero--6324bec94ec9e7e67876950a",
  "source": {
    "blob": "ba816856ee1786f572e7d378c37d1b50fa42163b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 57,
    "path": "GRWTSK/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6324bec94ec9e7e67876950a5d0f9d58c15bf0afe202c4414424277367fc287c",
  "verification": {
    "reference": "docs/verification/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb5b4bb0-2a32-3c26-41c4-34347ad34f16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma minpolyDiv_eval_eq_zero_of_ne_of_aeval_eq_zero [IsDomain S]
    {y} (hxy : y ≠ x) (hy : aeval y (minpoly R x) = 0) : (minpolyDiv R x).eval y = 0 := by
  rw [aeval_def, ← eval_map, ← minpolyDiv_spec R x] at hy
  simp only [eval_mul, eval_sub, eval_X, eval_C, mul_eq_zero] at hy
  exact hy.resolve_right (by rwa [sub_eq_zero])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba816856ee1786f572e7d378c37d1b50fa42163b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
