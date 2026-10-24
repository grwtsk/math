# second_on_interventionSector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c867de7-a912-5bc2-7809-2cedf8a11afe",
  "kind": "theorem",
  "lexical_name": "second_on_interventionSector",
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
  "slug": "second-on-interventionsector--8610efd47e1555f7e87283f3",
  "source": {
    "blob": "fe805f9cd5ec5c6397f26c1262bf4818580f9d32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 391,
    "path": "GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8610efd47e1555f7e87283f3564e39faaf8c694f6024c1beff52a0632cd7e289",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c867de7-a912-5bc2-7809-2cedf8a11afe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_on_interventionSector (x : V) :
    C.second (C.interventionSector x) = -C.interventionSector x := by
  change C.second
      (involutionPlus C.first (involutionMinus C.second x)) =
    -involutionPlus C.first (involutionMinus C.second x)
  have hcomm :
      C.second (involutionPlus C.first (involutionMinus C.second x)) =
        involutionPlus C.first
          (C.second (involutionMinus C.second x)) := by
    simp only [involutionPlus_apply, map_smul, map_add]
    rw [← C.commute]
  rw [hcomm, involution_on_minus C.second C.second_sq]
  simp only [map_neg]

end CommutingInvolutions

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Varianta968b1f67e155aaeb342b455ee45123ffc7e03312d12a81f7f9adbe7c3b7ebad.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe805f9cd5ec5c6397f26c1262bf4818580f9d32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
