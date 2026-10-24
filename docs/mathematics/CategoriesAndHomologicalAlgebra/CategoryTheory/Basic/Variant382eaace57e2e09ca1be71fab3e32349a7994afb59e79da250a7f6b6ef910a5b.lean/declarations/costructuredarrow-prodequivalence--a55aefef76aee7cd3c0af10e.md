# CostructuredArrow.prodEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93f2421f816b40a85492cde09c509f1e7bfb2bb74ccc1fdbac5d6261afb8cdde",
  "kind": "def",
  "lexical_name": "CostructuredArrow.prodEquivalence",
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
  "slug": "costructuredarrow-prodequivalence--a55aefef76aee7cd3c0af10e",
  "source": {
    "blob": "75b1bd9db55f357d2b9a34c933ad677f39d7314d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1053,
    "line": 1042,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant382eaace57e2e09ca1be71fab3e32349a7994afb59e79da250a7f6b6ef910a5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a55aefef76aee7cd3c0af10e32b3b71ff8f6112cdaa8b7eb325523e2e8bf1c97",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant382eaace57e2e09ca1be71fab3e32349a7994afb59e79da250a7f6b6ef910a5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93f2421f816b40a85492cde09c509f1e7bfb2bb74ccc1fdbac5d6261afb8cdde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1042–1053.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CostructuredArrow.prodEquivalence :
    CostructuredArrow (S.prod S') (T, T') ≌ CostructuredArrow S T × CostructuredArrow S' T' where
  functor := CostructuredArrow.prodFunctor S S' T T'
  inverse := CostructuredArrow.prodInverse S S' T T'
  unitIso := NatIso.ofComponents (fun f => Iso.refl _) (by simp)
  counitIso := NatIso.ofComponents (fun f => Iso.refl _) (by simp)

end

end Prod

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant382eaace57e2e09ca1be71fab3e32349a7994afb59e79da250a7f6b6ef910a5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant382eaace57e2e09ca1be71fab3e32349a7994afb59e79da250a7f6b6ef910a5b.lean#L1042).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75b1bd9db55f357d2b9a34c933ad677f39d7314d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
