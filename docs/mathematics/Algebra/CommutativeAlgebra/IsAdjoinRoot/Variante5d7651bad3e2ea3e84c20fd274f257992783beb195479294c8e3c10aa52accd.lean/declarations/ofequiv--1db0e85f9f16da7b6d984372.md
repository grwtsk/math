# ofEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7e8d2eb5d4959b23b6a442ea65ee2cf73e7c048b1807342c862c4f2efeab4df",
  "kind": "def",
  "lexical_name": "ofEquiv",
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
  "slug": "ofequiv--1db0e85f9f16da7b6d984372",
  "source": {
    "blob": "305e2c8b02a9226bcdab9bdb6017ad6c18888b4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 697,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variante5d7651bad3e2ea3e84c20fd274f257992783beb195479294c8e3c10aa52accd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1db0e85f9f16da7b6d984372ec6c02e09745440363423c926687d29613cb9558",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variante5d7651bad3e2ea3e84c20fd274f257992783beb195479294c8e3c10aa52accd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7e8d2eb5d4959b23b6a442ea65ee2cf73e7c048b1807342c862c4f2efeab4df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofEquiv (h : IsAdjoinRoot S f) (e : S ≃ₐ[R] T) : IsAdjoinRoot T f where
  map := ((e : S ≃+* T) : S →+* T).comp h.map
  map_surjective := e.surjective.comp h.map_surjective
  ker_map := by
    rw [← RingHom.comap_ker, RingHom.ker_coe_equiv, ← RingHom.ker_eq_comap_bot, h.ker_map]
  algebraMap_eq := by
    ext
    simp only [AlgEquiv.commutes, RingHom.comp_apply, AlgEquiv.coe_ringEquiv,
      RingEquiv.coe_toRingHom, ← h.algebraMap_apply]
#align is_adjoin_root.of_equiv IsAdjoinRoot.ofEquiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variante5d7651bad3e2ea3e84c20fd274f257992783beb195479294c8e3c10aa52accd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsAdjoinRoot/Variante5d7651bad3e2ea3e84c20fd274f257992783beb195479294c8e3c10aa52accd.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `305e2c8b02a9226bcdab9bdb6017ad6c18888b4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
