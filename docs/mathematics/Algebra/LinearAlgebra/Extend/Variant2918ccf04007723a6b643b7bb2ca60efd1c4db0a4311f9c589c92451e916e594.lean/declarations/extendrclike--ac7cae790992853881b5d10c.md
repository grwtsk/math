# extendRCLike

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3a39a4a173ce6fb111a315bb075fb7e04f843d35e77a139cb70f0335282e0c0",
  "kind": "def",
  "lexical_name": "extendRCLike",
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
  "slug": "extendrclike--ac7cae790992853881b5d10c",
  "source": {
    "blob": "88d7706e8546bda5b87821bd217d968dd35c9b46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 56,
    "path": "GRWTSK/Algebra/LinearAlgebra/Extend/Variant2918ccf04007723a6b643b7bb2ca60efd1c4db0a4311f9c589c92451e916e594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac7cae790992853881b5d10c97582dbe8475ef56428e6af73376724fa3f69010",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Extend/Variant2918ccf04007723a6b643b7bb2ca60efd1c4db0a4311f9c589c92451e916e594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3a39a4a173ce6fb111a315bb075fb7e04f843d35e77a139cb70f0335282e0c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def extendRCLike (fr : Dual ℝ F) : Dual 𝕜 F :=
  letI fc : F → 𝕜 := fun x => (fr x : 𝕜) - (I : 𝕜) * fr ((I : 𝕜) • x)
  have add (x y) : fc (x + y) = fc x + fc y := by
    simp only [fc, smul_add, map_add, mul_add]
    abel
  have A (c : ℝ) (x : F) : (fr ((c : 𝕜) • x) : 𝕜) = (c : 𝕜) * (fr x : 𝕜) := by simp
  have smul_ℝ (c : ℝ) (x : F) : fc ((c : 𝕜) • x) = (c : 𝕜) * fc x := by
    simp only [fc, A, smul_comm I, mul_comm I, mul_sub, mul_assoc]
  have smul_I (x : F) : fc ((I : 𝕜) • x) = (I : 𝕜) * fc x := by
    obtain (h | h) := @I_mul_I_ax 𝕜 _
    · simp [fc, h]
    · simp [fc, mul_sub, ← mul_assoc, smul_smul, h, add_comm]
  have smul_𝕜 (c : 𝕜) (x : F) : fc (c • x) = c • fc x := by
    rw [← re_add_im c]
    simp only [add_smul, ← smul_smul, add, smul_ℝ, smul_I, ← mul_assoc, smul_eq_mul, add_mul]
  { toFun := fc
    map_add' := add
    map_smul' := smul_𝕜 }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Extend/Variant2918ccf04007723a6b643b7bb2ca60efd1c4db0a4311f9c589c92451e916e594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Extend/Variant2918ccf04007723a6b643b7bb2ca60efd1c4db0a4311f9c589c92451e916e594.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d7706e8546bda5b87821bd217d968dd35c9b46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
