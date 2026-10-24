# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d99f51a3cd1bcf8c36cee3a974a511ba7d1a8b4e4fd7e364d1a26c4e894b4b3b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3bbc004dfe8599f2a7983a24",
  "source": {
    "blob": "85722eca425e4121a074593105c5c6eb5ca1c87c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 38,
    "path": "GRWTSK/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bbc004dfe8599f2a7983a2479fe9a18058381eeb7e32784f5bfbb6cd3a188cd",
  "verification": {
    "reference": "docs/verification/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d99f51a3cd1bcf8c36cee3a974a511ba7d1a8b4e4fd7e364d1a26c4e894b4b3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Neg αˣ :=
  ⟨fun u => ⟨-↑u, -↑u⁻¹, by simp, by simp⟩⟩

/-- Representing an element of a ring's unit group as an element of the ring commutes with
    mapping this element to its additive inverse. -/
@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Units/Variant4676964a471cad11cff3b38902576e8e44e2425ef9043556b0ff41bc9f7c5879.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85722eca425e4121a074593105c5c6eb5ca1c87c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
