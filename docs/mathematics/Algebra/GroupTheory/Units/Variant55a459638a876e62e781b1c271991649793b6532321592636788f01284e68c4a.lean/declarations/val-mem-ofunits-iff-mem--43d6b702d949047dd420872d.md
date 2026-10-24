# val_mem_ofUnits_iff_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:179abf6e-d3b5-c560-25cf-43aa6ad246c2",
  "kind": "lemma",
  "lexical_name": "val_mem_ofUnits_iff_mem",
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
  "slug": "val-mem-ofunits-iff-mem--43d6b702d949047dd420872d",
  "source": {
    "blob": "8076c04baa8ccc698b398895fde2bc6a3e81d537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 340,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43d6b702d949047dd420872d6c4596c791606de86f67038c44afde91730a2554",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:179abf6e-d3b5-c560-25cf-43aa6ad246c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma val_mem_ofUnits_iff_mem (H : Subgroup Gˣ) (x : Gˣ) : (x : G) ∈ H.ofUnits ↔ x ∈ H := by
  simp_rw [mem_ofUnits_iff_toUnits_mem, toUnits_val_apply]

/-- The equivalence between the greatest subgroup of units contained within `T` and `T` itself. -/
@[to_additive /-- The equivalence between the greatest subgroup of additive units
contained within `T` and `T` itself. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant55a459638a876e62e781b1c271991649793b6532321592636788f01284e68c4a.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8076c04baa8ccc698b398895fde2bc6a3e81d537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
