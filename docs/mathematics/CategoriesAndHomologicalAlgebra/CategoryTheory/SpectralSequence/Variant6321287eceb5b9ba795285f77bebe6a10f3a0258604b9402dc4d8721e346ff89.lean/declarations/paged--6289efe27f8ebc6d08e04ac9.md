# pageD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69c2b00e98b3a05989b5c85c89daa2f5596256e901e424e75d426e87d1e5501f",
  "kind": "def",
  "lexical_name": "pageD",
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
  "slug": "paged--6289efe27f8ebc6d08e04ac9",
  "source": {
    "blob": "c58cd3a6ccdc358167bdb86c3433f2aa7319ab51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6289efe27f8ebc6d08e04ac9593e89d88ca2b8d84b3493e7e101bacd3d2ab20e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69c2b00e98b3a05989b5c85c89daa2f5596256e901e424e75d426e87d1e5501f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def pageD (r : ℤ) (pq pq' : κ) (hr : r₀ ≤ r := by lia) :
    pageX X data r pq hr ⟶ pageX X data r pq' hr :=
  if hpq : (c r).Rel pq pq'
    then
      X.d (homOfLE (data.le₀₁ r pq'))
        (homOfLE (data.le₁₂' pq' rfl (data.hc₀₂ r pq pq' hpq)))
        (homOfLE (data.le₀₁ r pq)) (homOfLE (data.le₁₂ pq)) (homOfLE (data.le₂₃ r pq))
        (data.deg pq - 1) (data.deg pq) (data.deg pq + 1) (data.deg pq + 2) ≫
      (pageXIso _ _ _ _ _ _ _ _ _ rfl rfl
        (data.hc₀₂ r pq pq' hpq) (data.hc₁₃ r pq pq' hpq) _ _ _ (data.hc r pq pq' hpq) rfl _).inv
    else 0

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SpectralSequence/Variant6321287eceb5b9ba795285f77bebe6a10f3a0258604b9402dc4d8721e346ff89.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c58cd3a6ccdc358167bdb86c3433f2aa7319ab51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
