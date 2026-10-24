# Concrete.multiequalizerEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:981e2c264bfe1f2cc1727dcf37e26e48b4df57c39add777d5085cce361fb0e66",
  "kind": "def",
  "lexical_name": "Concrete.multiequalizerEquiv",
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
  "slug": "concrete-multiequalizerequiv--2ae26085151d0bba5fd5bc79",
  "source": {
    "blob": "0d2998ff5be5089ebaee65cf34e1a7e797bdd068",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 142,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ae26085151d0bba5fd5bc799f82307d039162185c76acc6df3302304fe605ed",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:981e2c264bfe1f2cc1727dcf37e26e48b4df57c39add777d5085cce361fb0e66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Concrete.multiequalizerEquiv (I : MulticospanIndex.{w} C) [HasMultiequalizer I]
    [PreservesLimit I.multicospan (forget C)] :
    (multiequalizer I : C) ≃
      { x : ∀ i : I.L, I.left i // ∀ i : I.R, I.fst i (x _) = I.snd i (x _) } := by
  let h1 := limit.isLimit I.multicospan
  let h2 := isLimitOfPreserves (forget C) h1
  let E := h2.conePointUniqueUpToIso (Types.limitConeIsLimit.{w, v} _)
  exact Equiv.trans E.toEquiv (Concrete.multiequalizerEquivAux.{w, v} I)
#align category_theory.limits.concrete.multiequalizer_equiv CategoryTheory.Limits.Concrete.multiequalizerEquiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant50b35c3c027b98e94520ba57cd802bb13d2947b19e9b4f9ac77908cde18b9454.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d2998ff5be5089ebaee65cf34e1a7e797bdd068` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
