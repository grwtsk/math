# Embedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:008114cdd8b2fc5f98e7bbeadaaa284ee267ae8cd6ec14d5d3fce96fee07d15b",
  "kind": "structure",
  "lexical_name": "Embedding",
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
  "slug": "embedding--3729f8f207ef2032bc918e9e",
  "source": {
    "blob": "0f885549835f714a60c7b4794235bc68bfebe561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3729f8f207ef2032bc918e9e632e44bd0d80abed50f65b5126e1aafba0339c09",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:008114cdd8b2fc5f98e7bbeadaaa284ee267ae8cd6ec14d5d3fce96fee07d15b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Embedding extends M ↪ N where
  map_fun' : ∀ {n} (f : L.Functions n) (x), toFun (funMap f x) = funMap f (toFun ∘ x) := by
    -- Porting note: see porting note on `Hom.map_fun'`
    intros; trivial
  map_rel' : ∀ {n} (r : L.Relations n) (x), RelMap r (toFun ∘ x) ↔ RelMap r x := by
    -- Porting note: see porting note on `Hom.map_fun'`
    intros; trivial

@[inherit_doc]
scoped[FirstOrder] notation:25 A " ↪[" L "] " B => FirstOrder.Language.Embedding L A B

/-- An equivalence of first-order structures is an equivalence that commutes with the
  interpretations of functions and relations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant34cfefd88fa1f51e7ae15d0f3d50a758e9d5910a37a4396a1a13fd4dcb6b624d.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f885549835f714a60c7b4794235bc68bfebe561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
