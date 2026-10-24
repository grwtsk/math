# algEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83d6258a1a22d928082a90e9d39bc2b80903713a71be2ddcec4631f0e4c4d688",
  "kind": "def",
  "lexical_name": "algEquiv",
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
  "slug": "algequiv--da6729dec8767ac7a43f65d8",
  "source": {
    "blob": "4567a817b4413394977204cac0a659ea01a08673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 504,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da6729dec8767ac7a43f65d813557e63920b10b364d930c111b3a8248f645ccd",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83d6258a1a22d928082a90e9d39bc2b80903713a71be2ddcec4631f0e4c4d688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 504–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def algEquiv (h : E ≠ ⊥) : K⟮X⟯ ≃ₐ[K] E :=
  (algEquivOfTranscendental (generator E) (transcendental_of_ne_C _ (generator_ne_C h))).trans <|
    IntermediateField.equivOfEq eq_adjoin_generator.symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Luroth/Variant7cf2580c5682dd62e735d1cdc4dad584056a11582332c130d0f5f90ddcfa3317.lean#L504).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4567a817b4413394977204cac0a659ea01a08673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
