# Cotangent.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:db4d8d8b3026610deaf53b88da78b809bdb2e078490d36ee143baf1332e27b58",
  "kind": "def",
  "lexical_name": "Cotangent.map",
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
  "slug": "cotangent-map--e5ec43195dff1c521afe6c86",
  "source": {
    "blob": "a285c000db0d58feabbb54c8de8cc10d4ce129bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 464,
    "path": "GRWTSK/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5ec43195dff1c521afe6c868923564a5e2b22dfa27c27c5db9e59d5761c559e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:db4d8d8b3026610deaf53b88da78b809bdb2e078490d36ee143baf1332e27b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cotangent.map (f : Hom P P') : P.Cotangent →ₗ[S] P'.Cotangent where
  toFun x := .of (Ideal.mapCotangent (R := R) _ _ f.toAlgHom
    (fun x hx ↦ by simpa using RingHom.congr_arg (algebraMap S S') hx) x.val)
  map_add' x y := ext (map_add _ x.val y.val)
  map_smul' r x := by
    ext
    obtain ⟨x, rfl⟩ := Cotangent.mk_surjective x
    obtain ⟨r, rfl⟩ := P.algebraMap_surjective r
    simp only [algebraMap_smul, val_smul', val_mk, val_of, Ideal.mapCotangent_toCotangent,
      RingHomCompTriple.comp_apply, ← (Ideal.toCotangent _).map_smul]
    conv_rhs => rw [← algebraMap_smul S', ← f.algebraMap_toRingHom, algebraMap_smul, val_smul',
      val_of, ← (Ideal.toCotangent _).map_smul]
    congr 1
    ext1
    simp only [SetLike.val_smul, smul_eq_mul, map_mul, Hom.toAlgHom_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf6abf9a331189baccf03fd23d6d0579d6146113eef83e69a47fb4b809b9fe113.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a285c000db0d58feabbb54c8de8cc10d4ce129bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
