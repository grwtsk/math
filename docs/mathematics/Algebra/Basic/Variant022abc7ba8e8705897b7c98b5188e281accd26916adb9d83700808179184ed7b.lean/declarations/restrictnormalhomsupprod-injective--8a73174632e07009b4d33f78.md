# restrictNormalHomSupProd_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:596c3927-16c2-443b-6ced-42c786ade11d",
  "kind": "theorem",
  "lexical_name": "restrictNormalHomSupProd_injective",
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
  "slug": "restrictnormalhomsupprod-injective--8a73174632e07009b4d33f78",
  "source": {
    "blob": "5fd27e6b1cae861e577e1e1c368cc88bb1acc65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 750,
    "path": "GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a73174632e07009b4d33f7809d66ea46889417847f8857a7795ce9984a62b08",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:596c3927-16c2-443b-6ced-42c786ade11d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictNormalHomSupProd_injective (K L : IntermediateField F E) [Normal F K] [Normal F L] :
    Function.Injective (restrictNormalHomSupProd K L) := by
  let : Algebra K ↑(K ⊔ L) := (inclusion le_sup_left).toAlgebra
  let : Algebra L ↑(K ⊔ L) := (inclusion le_sup_right).toAlgebra
  rw [← MonoidHom.ker_eq_bot_iff]
  suffices (IsScalarTower.toAlgHom F K ↑(K ⊔ L)).fieldRange ⊔
      (IsScalarTower.toAlgHom F L ↑(K ⊔ L)).fieldRange = ⊤ by
    rw [← fixingSubgroup_top, ← this, fixingSubgroup_sup, ← AlgEquiv.ker_restrictNormalHom,
      ← AlgEquiv.ker_restrictNormalHom]
    exact MonoidHom.ker_prod _ _
  change restrict (le_sup_left : K ≤ K ⊔ L) ⊔ restrict (le_sup_right : L ≤ K ⊔ L) = ⊤
  exact lift_injective _ <| by simp [lift_sup, lift_restrict, lift_top]

end IntermediateField

end Compositum

namespace Algebra

variable (F K : Type*) [Field F] [Field K] [Algebra F K] [IsQuadraticExtension F K]

/--
A quadratic separable extension is Galois.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd27e6b1cae861e577e1e1c368cc88bb1acc65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
