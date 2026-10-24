# RingHom.iterateFrobenius_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87af4a25-1b35-32fd-f0bf-c9ea26a17a74",
  "kind": "lemma",
  "lexical_name": "RingHom.iterateFrobenius_comm",
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
  "slug": "ringhom-iteratefrobenius-comm--fbb741e2f4d1ac50fb8f41c3",
  "source": {
    "blob": "dbe78f20dff6d4bc0a752f7ab114aacceb72e6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 116,
    "path": "GRWTSK/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbb741e2f4d1ac50fb8f41c3305bc4f551931fd63f300ce14f0be2981c4d8484",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87af4a25-1b35-32fd-f0bf-c9ea26a17a74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.iterateFrobenius_comm (n : ℕ) :
    g.comp (iterateFrobenius R p n) = (iterateFrobenius S p n).comp g :=
  ext fun x ↦ map_iterateFrobenius g p x n

variable (R S)

/-- The Frobenius map of an algebra as a Frobenius-semilinear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbe78f20dff6d4bc0a752f7ab114aacceb72e6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
