# MonoidHom.isUnit_eqLocusM_mk_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0135e4c8-f7c8-61b4-03ed-7a67b1ff1447",
  "kind": "theorem",
  "lexical_name": "MonoidHom.isUnit_eqLocusM_mk_iff",
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
  "slug": "monoidhom-isunit-eqlocusm-mk-iff--564facf61e9875413d17e48b",
  "source": {
    "blob": "8076c04baa8ccc698b398895fde2bc6a3e81d537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 352,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:564facf61e9875413d17e48ba4e5961f065a953a98853485f4e3504dbf15238e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0135e4c8-f7c8-61b4-03ed-7a67b1ff1447`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidHom.isUnit_eqLocusM_mk_iff {N : Type*} [Monoid N] (f g : M →* N) {r : M}
    (hr : f r = g r) : IsUnit (⟨r, hr⟩ : f.eqLocusM g) ↔ IsUnit r := by
  refine ⟨fun h ↦ h.map (SubmonoidClass.subtype _), fun h ↦ ?_⟩
  obtain ⟨s, hs⟩ := isUnit_iff_exists.mp h
  suffices ∃ a, r * a = 1 ∧ f a = g a ∧ a * r = 1 by
    simpa [isUnit_iff_exists, ← Subtype.val_inj]
  refine ⟨s, hs.left, ?_, hs.right⟩
  rw [← mul_one (f s), ← map_one g, ← hs.left, map_mul, ← mul_assoc, ← hr, ← map_mul,
    hs.right, map_one, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8076c04baa8ccc698b398895fde2bc6a3e81d537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
