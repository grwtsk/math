# RCLike.sqrt_neg_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd34d20f-e84a-dacf-b583-22cfff3aa0bd",
  "kind": "theorem",
  "lexical_name": "RCLike.sqrt_neg_I",
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
  "slug": "rclike-sqrt-neg-i--4c0f58d8f5799a9c6d3f099b",
  "source": {
    "blob": "79deea21d6286d727033ad963caa86948884b234",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 154,
    "path": "GRWTSK/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c0f58d8f5799a9c6d3f099ba6d586870d0481587e674969cff5a783d91ee24a",
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

Occurrence: `result:cd34d20f-e84a-dacf-b583-22cfff3aa0bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RCLike.sqrt_neg_I : sqrt (-I : 𝕜) = √2⁻¹ * (1 + I) * -I := by
  rw [sqrt_eq_ite]
  split_ifs with h
  · simp_rw [RingEquiv.symm_apply_eq, map_mul]
    simp [h, mul_assoc, add_comm, Complex.sqrt_neg_I, neg_mul, mul_add, add_mul, mul_sub,
      mul_comm Complex.I, ← sub_eq_add_neg]
  grind [I_eq_zero_or_im_I_eq_one]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Sqrt/Variant7b89a33a16f6874a87bf9da7da5d54240b9a9eb6fab720d2b538bf3d33ae05d3.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79deea21d6286d727033ad963caa86948884b234` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
