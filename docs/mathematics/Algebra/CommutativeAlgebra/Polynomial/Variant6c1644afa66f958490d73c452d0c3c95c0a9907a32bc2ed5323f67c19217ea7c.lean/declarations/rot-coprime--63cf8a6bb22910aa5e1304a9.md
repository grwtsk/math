# rot_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:420fdec4-bbd2-60a9-912b-33cb96e30059",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2b30208-12dc-8c56-3bd9-670c0768c02c",
  "kind": "lemma",
  "lexical_name": "rot_coprime",
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
  "slug": "rot-coprime--63cf8a6bb22910aa5e1304a9",
  "source": {
    "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 39,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63cf8a6bb22910aa5e1304a97700cda13215e28c0d77f4e39c0556c959ec51c6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2b30208-12dc-8c56-3bd9-670c0768c02c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma rot_coprime
    {p q r : ℕ} {a b c : k[X]} {u v w : k}
    {hp : 0 < p} {hq : 0 < q} {hr : 0 < r}
    {hu : u ≠ 0} {hv : v ≠ 0} {hw : w ≠ 0}
    (heq : C u * a ^ p + C v * b ^ q + C w * c ^ r = 0) (hab : IsCoprime a b) : IsCoprime b c := by
  have hCu : IsUnit (C u) := hu.isUnit_C
  have hCv : IsUnit (C v) := hv.isUnit_C
  have hCw : IsUnit (C w) := hw.isUnit_C
  rw [← IsCoprime.pow_iff hp hq, ← isCoprime_mul_units_left hCu hCv] at hab
  rw [add_eq_zero_iff_neg_eq] at heq
  rw [← IsCoprime.pow_iff hq hr, ← isCoprime_mul_units_left hCv hCw,
    ← heq, IsCoprime.neg_right_iff]
  convert IsCoprime.add_mul_left_right hab.symm 1 using 2
  rw [mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0edeb1fa4176a31a026d229659e237d2fe7da14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
