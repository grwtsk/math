# absIsAdmissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df58e30290497d5b5c51061d6320f6be9ef9fb19fe732f3dbc23b3adf4c682b0",
  "kind": "def",
  "lexical_name": "absIsAdmissible",
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
  "slug": "absisadmissible--d1ef2a2df8642352781b6db6",
  "source": {
    "blob": "34806758f26aacb0456a718e28988169ef480c0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/Algebra/UniversalAlgebra/AdmissibleAbs/Variant5d50a4438f361513cc62b8e1c18bd34bb286a6513d95ee413df0b9cc3092789d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1ef2a2df8642352781b6db6cd2abb0a7d13b96d5d78230c017ee80b12c1e53c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/AdmissibleAbs/Variant5d50a4438f361513cc62b8e1c18bd34bb286a6513d95ee413df0b9cc3092789d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df58e30290497d5b5c51061d6320f6be9ef9fb19fe732f3dbc23b3adf4c682b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def absIsAdmissible : IsAdmissible AbsoluteValue.abs :=
  { AbsoluteValue.abs_isEuclidean with
    card := fun ε ↦ ⌈1 / ε⌉₊
    exists_partition' := fun n _ hε _ hb ↦ exists_partition_int n hε hb }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/AdmissibleAbs/Variant5d50a4438f361513cc62b8e1c18bd34bb286a6513d95ee413df0b9cc3092789d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/AdmissibleAbs/Variant5d50a4438f361513cc62b8e1c18bd34bb286a6513d95ee413df0b9cc3092789d.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34806758f26aacb0456a718e28988169ef480c0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
