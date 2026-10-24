# isSolvable_gal_minpoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb5d01369bba318d3f35378b8b4339a53b6bb7f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0902cb09-b286-3e65-56a4-287401a42eb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9407d79-4036-f171-90a9-914afeb6bb2d",
  "kind": "theorem",
  "lexical_name": "isSolvable_gal_minpoly",
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
  "slug": "issolvable-gal-minpoly--2c253c65087ed6da2b107436",
  "source": {
    "blob": "eb5d01369bba318d3f35378b8b4339a53b6bb7f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 302,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c253c65087ed6da2b107436e130b1fcad4527017fc8ca27003a8d2d199eda3e",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variant569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9407d79-4036-f171-90a9-914afeb6bb2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSolvable_gal_minpoly {x : E} (hx : x ∈ solvableByRad F E) :
    Group.IsSolvable (minpoly F x).Gal := by
  induction hx using solvableByRad.induction with
  | mem y => rw [minpoly.eq_X_sub_C E]; infer_instance
  | add y z hy hz hy' hz' =>
    apply induction_step hy hz (add_mem hy hz) hy' hz' (add_mem ..) <;> apply subset_adjoin <;> simp
  | mul y z hy hz hy' hz' =>
    apply induction_step hy hz (mul_mem hy hz) hy' hz' (mul_mem ..) <;> apply subset_adjoin <;> simp
  | rad n y hn hy hy' => exact induction_rad (solvableByRad.rad_mem hn hy) hn hy'

/-- **Abel-Ruffini Theorem** (one direction): An irreducible polynomial with a `solvableByRad` root
has a solvable Galois group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variant569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant569fcc89b9f5a041b1390361d2affa87f9373192193709ba1f6225aaba651747.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb5d01369bba318d3f35378b8b4339a53b6bb7f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
