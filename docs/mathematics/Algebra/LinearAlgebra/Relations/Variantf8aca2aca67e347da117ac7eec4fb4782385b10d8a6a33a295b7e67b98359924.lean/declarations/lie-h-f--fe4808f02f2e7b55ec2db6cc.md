# lie_h_f

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5ea4d473ec13a2527e4f22859dcf346113b634b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c103ebf8-2636-67ba-4a05-a56522b3be76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c52c77a1-447f-ff0e-a878-89621af3403a",
  "kind": "lemma",
  "lexical_name": "lie_h_f",
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
  "slug": "lie-h-f--fe4808f02f2e7b55ec2db6cc",
  "source": {
    "blob": "c5ea4d473ec13a2527e4f22859dcf346113b634b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe4808f02f2e7b55ec2db6cc02b262c12c4c7194049e06729f7bdbeac3788f0d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c52c77a1-447f-ff0e-a878-89621af3403a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lie_h_f :
    ⁅h j, f i⁆ = -b.cartanMatrix i j • f i := by
  classical
  suffices ω b * ⁅h j, f i⁆ = ω b * (-b.cartanMatrix i j • f i) by
    replace this := congr_arg (ω b * ·) this
    simpa [← mul_assoc, ω_mul_ω] using this
  calc ω b * ⁅h j, f i⁆ = ω b * (h j * f i - f i * h j) := by rw [Ring.lie_def]
                      _ = -(h j * e i - e i * h j) * ω b := ?_
                      _ = -⁅h j, e i⁆ * ω b := by rw [Ring.lie_def]
                      _ = -(b.cartanMatrix i j • e i) * ω b := by rw [lie_h_e]
                      _ = ω b * (-b.cartanMatrix i j • f i) := ?_
  · rw [mul_sub, ← mul_assoc, ← mul_assoc, ω_mul_h, ω_mul_f, mul_assoc, mul_assoc, ω_mul_f, ω_mul_h,
      neg_sub, neg_mul, neg_mul, mul_neg, sub_mul, mul_assoc, mul_assoc]
    abel
  · rw [Matrix.mul_smul, ω_mul_f]
    simp [mul_assoc]

variable [P.IsReduced]

/-- An auxiliary lemma en route to `RootPairing.Base.lie_e_f_same`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Relations/Variantf8aca2aca67e347da117ac7eec4fb4782385b10d8a6a33a295b7e67b98359924.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ea4d473ec13a2527e4f22859dcf346113b634b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
