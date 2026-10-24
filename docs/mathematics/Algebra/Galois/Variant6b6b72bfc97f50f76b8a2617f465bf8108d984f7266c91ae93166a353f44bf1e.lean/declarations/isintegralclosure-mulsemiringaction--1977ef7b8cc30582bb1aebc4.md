# IsIntegralClosure.MulSemiringAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c42ec9e4828228c77c0f47a67bb0defcb13daae612c870d8a7bdc85c44daafc",
  "kind": "def",
  "lexical_name": "IsIntegralClosure.MulSemiringAction",
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
  "slug": "isintegralclosure-mulsemiringaction--1977ef7b8cc30582bb1aebc4",
  "source": {
    "blob": "7e8694dd79e1ce03ddaa4065de785133c42ddba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 41,
    "path": "GRWTSK/Algebra/Galois/Variant6b6b72bfc97f50f76b8a2617f465bf8108d984f7266c91ae93166a353f44bf1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1977ef7b8cc30582bb1aebc4daf14f4c62471f6566a67a92ca564b0e697fdd7c",
  "verification": {
    "reference": "docs/verification/Algebra/Galois/Variant6b6b72bfc97f50f76b8a2617f465bf8108d984f7266c91ae93166a353f44bf1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c42ec9e4828228c77c0f47a67bb0defcb13daae612c870d8a7bdc85c44daafc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsIntegralClosure.MulSemiringAction [Algebra.IsAlgebraic K L] :
    MulSemiringAction Gal(L/K) B :=
  MulSemiringAction.compHom B (galRestrict A K L B).toMonoidHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Galois/Variant6b6b72bfc97f50f76b8a2617f465bf8108d984f7266c91ae93166a353f44bf1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Galois/Variant6b6b72bfc97f50f76b8a2617f465bf8108d984f7266c91ae93166a353f44bf1e.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e8694dd79e1ce03ddaa4065de785133c42ddba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
