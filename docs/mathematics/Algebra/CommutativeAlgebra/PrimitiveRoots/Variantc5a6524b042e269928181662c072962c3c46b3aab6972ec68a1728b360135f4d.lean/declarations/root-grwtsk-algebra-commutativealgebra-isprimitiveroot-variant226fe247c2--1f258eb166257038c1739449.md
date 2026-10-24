# _root_.GRWTSK.Algebra.CommutativeAlgebra.IsPrimitiveRoot.Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.rootsOfUnityEquivOfPrimitiveRoots_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb3cb561-0785-1b29-8576-4901e08e4f18",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.IsPrimitiveRoot.Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.rootsOfUnityEquivOfPrimitiveRoots_symm_apply",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-isprimitiveroot-variant226fe247c2--1f258eb166257038c1739449",
  "source": {
    "blob": "217096023fbc613883b9a611910c5833baf089ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 555,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f258eb166257038c173944924614c719cf58e2fd0f96570bb7882a8b290bde6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb3cb561-0785-1b29-8576-4901e08e4f18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.CommutativeAlgebra.IsPrimitiveRoot.Variant226fe247c20101f787ea6fb3bfafb92bf73fd62674150eb7b8207342354a8efb.rootsOfUnityEquivOfPrimitiveRoots_symm_apply
    {S F} [CommRing S] [IsDomain S] [FunLike F R S] [MonoidHomClass F R S] {n : ℕ} [NeZero n]
    {f : F} (hf : Function.Injective f) (hζ : (primitiveRoots n R).Nonempty) (η) :
    f ((rootsOfUnityEquivOfPrimitiveRoots hf hζ).symm η : Rˣ) = (η : Sˣ) := by
  obtain ⟨ε, rfl⟩ := (rootsOfUnityEquivOfPrimitiveRoots hf hζ).surjective η
  rw [MulEquiv.symm_apply_apply, val_rootsOfUnityEquivOfPrimitiveRoots_apply_coe]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variantc5a6524b042e269928181662c072962c3c46b3aab6972ec68a1728b360135f4d.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `217096023fbc613883b9a611910c5833baf089ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
