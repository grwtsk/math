# associated_linMulLin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a47b810b9f0eff266416ee968565a9bc39fff294",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1003,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28f6bd66-959d-bb0b-ee44-d05d66d0c9c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99e47c42-0289-25ff-9adb-68aa9f5de60e",
  "kind": "theorem",
  "lexical_name": "associated_linMulLin",
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
  "slug": "associated-linmullin--befea4358dc8fdd5641714d8",
  "source": {
    "blob": "a47b810b9f0eff266416ee968565a9bc39fff294",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1014,
    "line": 1003,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:befea4358dc8fdd5641714d81c468a219632c71b4ccd4188d087af6962d7b13b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99e47c42-0289-25ff-9adb-68aa9f5de60e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1003–1014.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_linMulLin [Invertible (2 : R)] (f g : M →ₗ[R] R) :
    associated (R := R) (N := R) (linMulLin f g) =
      ⅟ (2 : R) • ((mul R R).compl₁₂ f g + (mul R R).compl₁₂ g f) := by
  ext
  simp only [associated_apply, linMulLin_apply, map_add, smul_add, LinearMap.add_apply,
    LinearMap.smul_apply, compl₁₂_apply, mul_apply', smul_eq_mul, invOf_smul_eq_iff]
  simp only [smul_add, Module.End.smul_def, Module.End.ofNat_apply, nsmul_eq_mul, Nat.cast_ofNat,
    mul_invOf_cancel_left']
  ring_nf

open LinearMap in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantead3045493ef08f9f2c042da960146368dd6ef4a2697c1b910a1137c77965cd1.lean#L1003).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a47b810b9f0eff266416ee968565a9bc39fff294` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
