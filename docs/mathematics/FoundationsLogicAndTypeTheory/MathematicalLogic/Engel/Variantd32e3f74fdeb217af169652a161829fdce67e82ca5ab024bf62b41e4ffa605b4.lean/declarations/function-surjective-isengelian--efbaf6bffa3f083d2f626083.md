# Function.Surjective.isEngelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6eb8124bd3544fda957c017ee7b875e6d4284068",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93915990-068f-9fb5-ab5e-9cee46afe835",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35c323e2-934e-cc4d-a886-506a6821b4bd",
  "kind": "theorem",
  "lexical_name": "Function.Surjective.isEngelian",
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
  "slug": "function-surjective-isengelian--efbaf6bffa3f083d2f626083",
  "source": {
    "blob": "6eb8124bd3544fda957c017ee7b875e6d4284068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efbaf6bffa3f083d2f626083ed8447c949288205cb485b36272a551b168bb20f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35c323e2-934e-cc4d-a886-506a6821b4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Surjective.isEngelian {f : L →ₗ⁅R⁆ L₂} (hf : Function.Surjective f)
    (h : LieAlgebra.IsEngelian.{u₁, u₂, u₄} R L) : LieAlgebra.IsEngelian.{u₁, u₃, u₄} R L₂ := by
  intro M _i1 _i2 _i3 _i4 h'
  letI : LieRingModule L M := LieRingModule.compLieHom M f
  letI : LieModule R L M := compLieHom M f
  have hnp : ∀ x, IsNilpotent (toEndomorphism R L M x) := fun x => h' (f x)
  have surj_id : Function.Surjective (LinearMap.id : M →ₗ[R] M) := Function.surjective_id
  haveI : LieModule.IsNilpotent R L M := h M hnp
  apply hf.lieModuleIsNilpotent surj_id
  -- Porting note: was `simp`
  intros; simp only [LinearMap.id_coe, id_eq]; rfl
#align function.surjective.is_engelian Function.Surjective.isEngelian

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variantd32e3f74fdeb217af169652a161829fdce67e82ca5ab024bf62b41e4ffa605b4.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb8124bd3544fda957c017ee7b875e6d4284068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
