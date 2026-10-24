# eval_minpolyDiv_of_aeval_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ad175b3-3538-f107-3fcc-c83dd1015d8c",
  "kind": "lemma",
  "lexical_name": "eval_minpolyDiv_of_aeval_eq_zero",
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
  "slug": "eval-minpolydiv-of-aeval-eq-zero--b786e2444607a976822831cf",
  "source": {
    "blob": "ba816856ee1786f572e7d378c37d1b50fa42163b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 81,
    "path": "GRWTSK/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b786e2444607a976822831cf3bc8d98e398cee537d4b97526c1a90e6e9a1f0db",
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

Occurrence: `result:3ad175b3-3538-f107-3fcc-c83dd1015d8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eval_minpolyDiv_of_aeval_eq_zero [IsDomain S] [DecidableEq S]
    {y} (hy : aeval y (minpoly R x) = 0) :
    (minpolyDiv R x).eval y = if x = y then aeval x (derivative <| minpoly R x) else 0 := by
  rw [eval, eval₂_minpolyDiv_of_eval₂_eq_zero, RingHom.id_apply, RingHom.id_apply]
  simpa [aeval_def] using hy


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba816856ee1786f572e7d378c37d1b50fa42163b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
