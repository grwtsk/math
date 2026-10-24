# abs_exp_ofReal_mul_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2030,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8cb4fde-0e25-730a-4392-83c8b93f45f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63938e26-3e28-3e87-1d29-c7730c68b85e",
  "kind": "theorem",
  "lexical_name": "abs_exp_ofReal_mul_I",
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
  "slug": "abs-exp-ofreal-mul-i--79f48fcc411c02b44d116931",
  "source": {
    "blob": "67d71e496ea143cafd81c9aa2893b68b5ab902d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2034,
    "line": 2030,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79f48fcc411c02b44d116931edc19b25990cdb9da8352776327a119c34a8a6aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63938e26-3e28-3e87-1d29-c7730c68b85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2030–2034.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_exp_ofReal_mul_I (x : ℝ) : abs (exp (x * I)) = 1 := by
  rw [exp_mul_I, abs_cos_add_sin_mul_I]
set_option linter.uppercaseLean3 false in
#align complex.abs_exp_of_real_mul_I Complex.abs_exp_ofReal_mul_I

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant152b23b8dbefda24bff8c9204bcf0789d3ff8d0002b0a1cfb12d8b1655595afd.lean#L2030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d71e496ea143cafd81c9aa2893b68b5ab902d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
