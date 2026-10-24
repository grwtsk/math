# createsColimitOfNatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8299bbe944e51e458f10d596feab94b81dc20359574dbe6155becae456d1212",
  "kind": "def",
  "lexical_name": "createsColimitOfNatIso",
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
  "slug": "createscolimitofnatiso--841cb56526034be04cac6218",
  "source": {
    "blob": "b88a661d98c0323cf425109885c5725a0a073b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 541,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant785f61b9eab021d0f5953f6eb5030dd98c2aa4133059f67979673bbd13f47a6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:841cb56526034be04cac6218e4bafa3b1688d2f8f171eb8c0f058502f4bd639e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant785f61b9eab021d0f5953f6eb5030dd98c2aa4133059f67979673bbd13f47a6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8299bbe944e51e458f10d596feab94b81dc20359574dbe6155becae456d1212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsColimitOfNatIso {F G : C ⥤ D} (h : F ≅ G) [CreatesColimit K F] : CreatesColimit K G
    where
  lifts c t :=
    { liftedCocone := liftColimit ((IsColimit.precomposeHomEquiv (isoWhiskerLeft K h : _) c).symm t)
      validLift := by
        refine' (IsColimit.mapCoconeEquiv h _).uniqueUpToIso t
        apply IsColimit.ofIsoColimit _ (liftedColimitMapsToOriginal _).symm
        apply (IsColimit.precomposeHomEquiv _ _).symm t }
  toReflectsColimit := reflectsColimitOfNatIso _ h
#align category_theory.creates_colimit_of_nat_iso CategoryTheory.createsColimitOfNatIso

/-- If `F` creates colimits of shape `J` and `F ≅ G`, then `G` creates colimits of shape `J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant785f61b9eab021d0f5953f6eb5030dd98c2aa4133059f67979673bbd13f47a6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Creates/Variant785f61b9eab021d0f5953f6eb5030dd98c2aa4133059f67979673bbd13f47a6c.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b88a661d98c0323cf425109885c5725a0a073b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
