# toComplex_im_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f00df12-13c9-f3d3-1153-877e6d63787a",
  "kind": "theorem",
  "lexical_name": "toComplex_im_div",
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
  "slug": "tocomplex-im-div--a1b7746eba5044e6d18b78a8",
  "source": {
    "blob": "c0b231e497cba142ff28799eca450bb4b952471a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 182,
    "path": "GRWTSK/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1b7746eba5044e6d18b78a8ca5ff0e62e2ad607042c451c62088bebaef8e7b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f00df12-13c9-f3d3-1153-877e6d63787a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toComplex_im_div (x y : ℤ[i]) : ((x / y : ℤ[i]) : ℂ).im = round (x / y : ℂ).im := by
  rw [div_def, ← @Rat.round_cast ℝ _ _, ← @Rat.round_cast ℝ _ _]
  simp [-Rat.round_cast, mul_assoc, div_eq_mul_inv, add_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussianInt/Variant3a01dfe0d8d68a9f92429e48f4fbf733d15f979224f7c7c9ef4be0ae14a2a67b.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b231e497cba142ff28799eca450bb4b952471a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
