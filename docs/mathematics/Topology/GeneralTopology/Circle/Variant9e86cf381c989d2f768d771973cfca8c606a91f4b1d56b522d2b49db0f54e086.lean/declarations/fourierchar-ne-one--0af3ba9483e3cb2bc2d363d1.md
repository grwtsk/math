# fourierChar_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10877567953e4b3a28494a06411e5b55c4b2426f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e86cf381c989d2f768d771973cfca8c606a91f4b1d56b522d2b49db0f54e086.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da52ec0c-4ebe-cfef-257e-647a6f5a5e78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca3f44b8-5e94-ea11-0eff-4754784a69c5",
  "kind": "theorem",
  "lexical_name": "fourierChar_ne_one",
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
  "slug": "fourierchar-ne-one--0af3ba9483e3cb2bc2d363d1",
  "source": {
    "blob": "10877567953e4b3a28494a06411e5b55c4b2426f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variant9e86cf381c989d2f768d771973cfca8c606a91f4b1d56b522d2b49db0f54e086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af3ba9483e3cb2bc2d363d1df4e4acc1e9a702d2eac386f35052b5388abec9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variant9e86cf381c989d2f768d771973cfca8c606a91f4b1d56b522d2b49db0f54e086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca3f44b8-5e94-ea11-0eff-4754784a69c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierChar_ne_one : fourierChar ≠ 1 := by
  rw [DFunLike.ne_iff]
  use 2⁻¹
  simp only [fourierChar_apply', AddChar.one_apply]
  rw [mul_comm, ← mul_assoc, inv_mul_cancel₀ (by positivity), one_mul]
  exact Circle.exp_pi_ne_one

/-- The additive character from `ℝ` onto the circle, given by `fun x ↦ exp (x * I)`. This uses the
probabilist convention that there is no `2 * π` in the exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variant9e86cf381c989d2f768d771973cfca8c606a91f4b1d56b522d2b49db0f54e086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variant9e86cf381c989d2f768d771973cfca8c606a91f4b1d56b522d2b49db0f54e086.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10877567953e4b3a28494a06411e5b55c4b2426f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
