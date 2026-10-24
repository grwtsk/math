# quadratic_reciprocity'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52d412108318cebe8b0a4ddb24b8c26461ee45e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e85b5ea6-9f13-3981-10f2-ea834db1afa3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3530d549-3d4c-0ee4-8975-4d12331391e4",
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
  "slug": "quadratic-reciprocity--031120072780c0c76d6f8d78",
  "source": {
    "blob": "52d412108318cebe8b0a4ddb24b8c26461ee45e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:031120072780c0c76d6f8d78291a878690e0e76005a57640941f9ad14e45b4da",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3530d549-3d4c-0ee4-8975-4d12331391e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_reciprocity' (hp : p ≠ 2) (hq : q ≠ 2) :
    legendreSym q p = (-1) ^ (p / 2 * (q / 2)) * legendreSym p q := by
  cases' eq_or_ne p q with h h
  · subst p
    rw [(eq_zero_iff q q).mpr (by exact_mod_cast nat_cast_self q), mul_zero]
  · have qr := congr_arg (· * legendreSym p q) (quadratic_reciprocity hp hq h)
    have : ((q : ℤ) : ZMod p) ≠ 0 := by exact_mod_cast prime_ne_zero p q h
    simpa only [mul_assoc, ← pow_two, sq_one p this, mul_one] using qr
#align legendre_sym.quadratic_reciprocity' legendreSym.quadratic_reciprocity'

/-- The Law of Quadratic Reciprocity: if `p` and `q` are odd primes and `p % 4 = 1`,
then `(q / p) = (p / q)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/QuadraticReciprocity/Variantab69ab818d387e99c9e9aaa596850981cfc66325531fc7926acf0bdde7a0c139.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52d412108318cebe8b0a4ddb24b8c26461ee45e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
