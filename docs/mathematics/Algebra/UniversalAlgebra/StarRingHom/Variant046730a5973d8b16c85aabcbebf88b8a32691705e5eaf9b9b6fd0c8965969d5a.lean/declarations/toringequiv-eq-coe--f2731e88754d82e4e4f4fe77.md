# toRingEquiv_eq_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8386a97-412d-8072-80bb-441264974188",
  "kind": "theorem",
  "lexical_name": "toRingEquiv_eq_coe",
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
  "slug": "toringequiv-eq-coe--f2731e88754d82e4e4f4fe77",
  "source": {
    "blob": "6715912b9323a205950b2d7ea4c5c53d1ad2a7e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 345,
    "path": "GRWTSK/Algebra/UniversalAlgebra/StarRingHom/Variant046730a5973d8b16c85aabcbebf88b8a32691705e5eaf9b9b6fd0c8965969d5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2731e88754d82e4e4f4fe77a5cf0abb28dc51ea1275ce79776f39308bc800d6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/StarRingHom/Variant046730a5973d8b16c85aabcbebf88b8a32691705e5eaf9b9b6fd0c8965969d5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8386a97-412d-8072-80bb-441264974188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toRingEquiv_eq_coe (e : A ≃⋆+* B) : e.toRingEquiv = e :=
  rfl

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/StarRingHom/Variant046730a5973d8b16c85aabcbebf88b8a32691705e5eaf9b9b6fd0c8965969d5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/StarRingHom/Variant046730a5973d8b16c85aabcbebf88b8a32691705e5eaf9b9b6fd0c8965969d5a.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6715912b9323a205950b2d7ea4c5c53d1ad2a7e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
