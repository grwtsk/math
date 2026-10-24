# quadratic_reciprocity'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8377654-620e-cd86-b897-5afc184b6608",
  "kind": "theorem",
  "lexical_name": "quadratic_reciprocity'",
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
  "slug": "quadratic-reciprocity--8071a1bdd0f9e3ec7b734960",
  "source": {
    "blob": "237e9c76c329e92b85d69612b1e2f081de2a03ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 127,
    "path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8071a1bdd0f9e3ec7b7349603ad19470fe31471119f00c5c2c636d9c9a10e83f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8377654-620e-cd86-b897-5afc184b6608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_reciprocity' (hp : p ≠ 2) (hq : q ≠ 2) :
    legendreSym q p = (-1) ^ (p / 2 * (q / 2)) * legendreSym p q := by
  rcases eq_or_ne p q with h | h
  · subst p
    rw [(eq_zero_iff q q).mpr (mod_cast natCast_self q), mul_zero]
  · have qr := congr_arg (· * legendreSym p q) (quadratic_reciprocity hp hq h)
    have : ((q : ℤ) : ZMod p) ≠ 0 := mod_cast prime_ne_zero p q h
    simpa only [mul_assoc, ← pow_two, sq_one p this, mul_one] using qr

/-- The Law of Quadratic Reciprocity: if `p` and `q` are odd primes and `p % 4 = 1`,
then `(q / p) = (p / q)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/QuadraticReciprocity/Variantb3d10276d6e54f8d3f41a7f537d4715dc07a10b131742f9d862d57e9bef6a77d.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `237e9c76c329e92b85d69612b1e2f081de2a03ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
