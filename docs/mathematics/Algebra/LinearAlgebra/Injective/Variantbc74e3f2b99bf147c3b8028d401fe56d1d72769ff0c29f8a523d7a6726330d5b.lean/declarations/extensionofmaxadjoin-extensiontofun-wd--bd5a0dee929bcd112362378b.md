# ExtensionOfMaxAdjoin.extensionToFun_wd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ce0cef8-0d41-603a-dc93-fd1a304852e2",
  "kind": "theorem",
  "lexical_name": "ExtensionOfMaxAdjoin.extensionToFun_wd",
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
  "slug": "extensionofmaxadjoin-extensiontofun-wd--bd5a0dee929bcd112362378b",
  "source": {
    "blob": "065854b94aab1689ac4ae5a99212a1e22d9e6bf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 376,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd5a0dee929bcd112362378b8eb32578ea65dd83196a1d1f8ff1e9dd30b1fb55",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ce0cef8-0d41-603a-dc93-fd1a304852e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ExtensionOfMaxAdjoin.extensionToFun_wd (h : Module.Baer R Q) {y : N}
    (x : supExtensionOfMaxSingleton i f y) (a : (extensionOfMax i f).domain)
    (r : R) (eq1 : ↑x = ↑a + r • y) :
    ExtensionOfMaxAdjoin.extensionToFun i f h x =
      (extensionOfMax i f).toLinearPMap a + ExtensionOfMaxAdjoin.extendIdealTo i f h y r := by
  cases' a with a ha
  have eq2 :
    (ExtensionOfMaxAdjoin.fst i x - a : N) = (r - ExtensionOfMaxAdjoin.snd i x) • y := by
    change x = a + r • y at eq1
    rwa [ExtensionOfMaxAdjoin.eqn, ← sub_eq_zero, ← sub_sub_sub_eq, sub_eq_zero, ← sub_smul]
      at eq1
  have eq3 :=
    ExtensionOfMaxAdjoin.extendIdealTo_eq i f h (r - ExtensionOfMaxAdjoin.snd i x)
      (by rw [← eq2]; exact Submodule.sub_mem _ (ExtensionOfMaxAdjoin.fst i x).2 ha)
  simp only [map_sub, sub_smul, sub_eq_iff_eq_add] at eq3
  unfold ExtensionOfMaxAdjoin.extensionToFun
  rw [eq3, ← add_assoc, ← (extensionOfMax i f).toLinearPMap.map_add, AddMemClass.mk_add_mk]
  congr
  ext
  dsimp
  rw [Subtype.coe_mk, add_sub, ← eq1]
  exact eq_sub_of_add_eq (ExtensionOfMaxAdjoin.eqn i x).symm
set_option linter.uppercaseLean3 false in
#align module.Baer.extension_of_max_adjoin.extension_to_fun_wd Module.Baer.ExtensionOfMaxAdjoin.extensionToFun_wd

/-- The linear map `M ⊔ ⟨y⟩ ⟶ Q` by `x + r • y ↦ f x + φ r` is an extension of `f`-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variantbc74e3f2b99bf147c3b8028d401fe56d1d72769ff0c29f8a523d7a6726330d5b.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `065854b94aab1689ac4ae5a99212a1e22d9e6bf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
