# OneCochain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48b15884d61766fe2539e2d1132601abdf6bcefcb47fbdd6e55ebf856519d3a0",
  "kind": "structure",
  "lexical_name": "OneCochain",
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
  "slug": "onecochain--d5b8f8695a0e558fa26c5b90",
  "source": {
    "blob": "d5504cbdcc4a4c0a96066b9a6fbfaab07e873e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5b8f8695a0e558fa26c5b9017882527d2da848e57cd2c348d4e74ee2ba870f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:48b15884d61766fe2539e2d1132601abdf6bcefcb47fbdd6e55ebf856519d3a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OneCochain where
  /-- the data involved in a 1-cochain -/
  ev (i j : I) ⦃T : C⦄ (a : T ⟶ U i) (b : T ⟶ U j) : G.obj (Opposite.op T)
  ev_precomp (i j : I) ⦃T T' : C⦄ (φ : T ⟶ T') (a : T' ⟶ U i) (b : T' ⟶ U j) :
    G.map φ.op (ev i j a b) = ev i j (φ ≫ a) (φ ≫ b) := by aesop

namespace OneCochain

attribute [simp] OneCochain.ev_precomp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6dcf36c09e4574c4624fb4ccfbb8b71427d41ba28da803b3955481ddf931958f.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5504cbdcc4a4c0a96066b9a6fbfaab07e873e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
