# Complex.sqrt_neg_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0378a55c-9657-aed3-ae66-6e9a9caa5db0",
  "kind": "theorem",
  "lexical_name": "Complex.sqrt_neg_I",
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
  "slug": "complex-sqrt-neg-i--887c5daa49e008167647742b",
  "source": {
    "blob": "79deea21d6286d727033ad963caa86948884b234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 143,
    "path": "GRWTSK/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:887c5daa49e008167647742bf8150734e3ca166c8b12b5838c056c0658c2f55a",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0378a55c-9657-aed3-ae66-6e9a9caa5db0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.sqrt_neg_I : sqrt (-I : ℂ) = √2⁻¹ * (1 - I) := by
  rw [sqrt, ← re_add_im ((-I) ^ 2⁻¹), cpow_inv_two_im_eq_neg_sqrt (by simp), cpow_inv_two_re]
  simp [mul_sub, ← sub_eq_add_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79deea21d6286d727033ad963caa86948884b234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
