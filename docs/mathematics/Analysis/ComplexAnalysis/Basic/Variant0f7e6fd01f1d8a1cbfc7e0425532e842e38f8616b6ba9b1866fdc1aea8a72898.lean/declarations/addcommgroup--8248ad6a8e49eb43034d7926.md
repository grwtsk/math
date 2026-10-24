# addCommGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fc31ac5b2c1329758b915aac0677741b7d7e486060092ef6634b73a0ce0b2e63",
  "kind": "instance",
  "lexical_name": "addCommGroup",
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
  "slug": "addcommgroup--8248ad6a8e49eb43034d7926",
  "source": {
    "blob": "0d76c7c9aeef36729985db9ebbfac387bd8f00ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 316,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant0f7e6fd01f1d8a1cbfc7e0425532e842e38f8616b6ba9b1866fdc1aea8a72898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8248ad6a8e49eb43034d7926c9d87f7a4633fa08ed0e6b88cb4bb4229eb8cea7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Basic/Variant0f7e6fd01f1d8a1cbfc7e0425532e842e38f8616b6ba9b1866fdc1aea8a72898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fc31ac5b2c1329758b915aac0677741b7d7e486060092ef6634b73a0ce0b2e63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addCommGroup : AddCommGroup ℂ :=
  { zero := (0 : ℂ)
    add := (· + ·)
    neg := Neg.neg
    sub := Sub.sub
    nsmul := fun n z => n • z
    zsmul := fun n z => n • z
    zsmul_zero' := by intros; ext <;> simp [smul_re, smul_im]
    nsmul_zero := by intros; ext <;> simp [smul_re, smul_im]
    nsmul_succ := by intros; ext <;> simp [smul_re, smul_im] <;> ring
    zsmul_succ' := by intros; ext <;> simp [smul_re, smul_im] <;> ring
    zsmul_neg' := by intros; ext <;> simp [smul_re, smul_im] <;> ring
    add_assoc := by intros; ext <;> simp <;> ring
    zero_add := by intros; ext <;> simp
    add_zero := by intros; ext <;> simp
    add_comm := by intros; ext <;> simp <;> ring
    neg_add_cancel := by intros; ext <;> simp }


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Basic/Variant0f7e6fd01f1d8a1cbfc7e0425532e842e38f8616b6ba9b1866fdc1aea8a72898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Basic/Variant0f7e6fd01f1d8a1cbfc7e0425532e842e38f8616b6ba9b1866fdc1aea8a72898.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d76c7c9aeef36729985db9ebbfac387bd8f00ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
