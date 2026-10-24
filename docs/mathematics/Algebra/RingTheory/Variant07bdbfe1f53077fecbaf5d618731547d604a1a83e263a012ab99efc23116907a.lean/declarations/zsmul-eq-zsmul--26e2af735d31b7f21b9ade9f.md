# zsmul_eq_zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18e28677-78ed-caa5-acbd-cf5478ac2554",
  "kind": "lemma",
  "lexical_name": "zsmul_eq_zsmul",
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
  "slug": "zsmul-eq-zsmul--26e2af735d31b7f21b9ade9f",
  "source": {
    "blob": "67046c4b233d741bec40bddd080181144973618c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 198,
    "path": "GRWTSK/Algebra/Ring/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e2af735d31b7f21b9ade9f1df2b4d4ee57a2ff5d3a37f2aa2d5d529183aaf6",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18e28677-78ed-caa5-acbd-cf5478ac2554`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zsmul_eq_zsmul (n : ℤ) (x : X[S⁻¹]) :
    letI inst := OreLocalization.instModuleOfIsScalarTower (R₀ := ℤ) (R := R) (X := X) (S := S)
    HSMul.hSMul (self := @instHSMul _ _ inst.toSMul) n x = n • x := by
  letI inst := OreLocalization.instModuleOfIsScalarTower (R₀ := ℤ) (R := R) (X := X) (S := S)
  exact congr($(AddCommGroup.uniqueIntModule.2 inst).smul n x)

open nonZeroDivisors

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variant07bdbfe1f53077fecbaf5d618731547d604a1a83e263a012ab99efc23116907a.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67046c4b233d741bec40bddd080181144973618c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
