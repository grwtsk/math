# isAlgebraic_iff_isAlgebraic_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b0e23ea-bc0b-ee36-37c3-860067fe8ddd",
  "kind": "theorem",
  "lexical_name": "isAlgebraic_iff_isAlgebraic_val",
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
  "slug": "isalgebraic-iff-isalgebraic-val--9e0d7c161523fea6a5338a7e",
  "source": {
    "blob": "965e9965ffaf7a90d74c43cbb8b7f0999ebf51ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 335,
    "path": "GRWTSK/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e0d7c161523fea6a5338a7e4279f173493c44bd8ebe532d69122bc17849a56a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b0e23ea-bc0b-ee36-37c3-860067fe8ddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isAlgebraic_iff_isAlgebraic_val {S : Subalgebra R A} {x : S} :
    _root_.IsAlgebraic R x ↔ _root_.IsAlgebraic R x.1 :=
  (isAlgebraic_algHom_iff S.val Subtype.val_injective).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante193f788b27f16ab19d1cf361e12e8a0c9b697f50e7c3896c0711d79b5ec5bef.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965e9965ffaf7a90d74c43cbb8b7f0999ebf51ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
