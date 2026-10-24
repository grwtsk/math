# fixedField.smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2170393df22d582fd02a8e5b8faf4478a47cdae4f99c5e9502a4f4da12e579d7",
  "kind": "instance",
  "lexical_name": "fixedField.smul",
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
  "slug": "fixedfield-smul--e05bdc4c013ca1f9fbfd329b",
  "source": {
    "blob": "5fd27e6b1cae861e577e1e1c368cc88bb1acc65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 299,
    "path": "GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e05bdc4c013ca1f9fbfd329be1a32eb58242f10ae3893b18067fa62dac982a1b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2170393df22d582fd02a8e5b8faf4478a47cdae4f99c5e9502a4f4da12e579d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fixedField.smul : SMul K (fixedField (fixingSubgroup K)) where
  smul x y := ⟨x * y, fun ϕ => by
    rw [smul_mul', show ϕ • (x : E) = ↑x from ϕ.2 x, show ϕ • (y : E) = ↑y from y.2 ϕ]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd27e6b1cae861e577e1e1c368cc88bb1acc65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
