# self_mul_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd7e734e6c27ed4a33393fa6dee92e118a77b2fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43518757-bd76-6a75-6cd5-fb8e8cb7ab37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fda5fc7-c318-0ec6-762b-1449b743b967",
  "kind": "theorem",
  "lexical_name": "self_mul_sign",
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
  "slug": "self-mul-sign--02c2c6922b5e621f46521ba6",
  "source": {
    "blob": "dd7e734e6c27ed4a33393fa6dee92e118a77b2fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 409,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c2c6922b5e621f46521ba6ff543f082b9d90073956ab01e9835299270c0b1f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fda5fc7-c318-0ec6-762b-1449b743b967`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem self_mul_sign (x : α) : x * sign x = |x| := by
  rcases lt_trichotomy x 0 with hx | rfl | hx <;> simp [*, abs_of_pos, abs_of_neg]

/-- `SignType.sign` as a `MonoidWithZeroHom` for a nontrivial ordered semiring. Note that linearity
is required; consider ℂ with the order `z ≤ w` iff they have the same imaginary part and
`z - w ≤ 0` in the reals; then `1 + I` and `1 - I` are incomparable to zero, and thus we have:
`0 * 0 = SignType.sign (1 + I) * SignType.sign (1 - I) ≠ SignType.sign 2 = 1`.
(`Complex.orderedCommRing`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variante6d0fcbd3a5442a5d1cd40ec51893ebf6d793d4c8aafabf15c3c78534b127a48.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd7e734e6c27ed4a33393fa6dee92e118a77b2fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
