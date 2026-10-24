# default_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd3b9925-1265-f9a1-b6a3-73ab4fb7970d",
  "kind": "lemma",
  "lexical_name": "default_apply",
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
  "slug": "default-apply--feb2d111dd23d96163163734",
  "source": {
    "blob": "ec539d09a6b2f3126edbb7af5f202de3a91e2fd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 253,
    "path": "GRWTSK/Algebra/GroupTheory/AlgHom/Variant2f32362b558f936a955d5346cbc5912c4ef12b08196eb1a5c8258150075cab8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feb2d111dd23d96163163734432e4643d5da8a81b2fd20534818887525dbeea8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AlgHom/Variant2f32362b558f936a955d5346cbc5912c4ef12b08196eb1a5c8258150075cab8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd3b9925-1265-f9a1-b6a3-73ab4fb7970d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma default_apply (x : A) : (default : 𝒜 →ₐᵍ[R] ℬ) x = 0 :=
  rfl

end

section restrictScalars

/-- Restrict the base ring to a "smaller" ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AlgHom/Variant2f32362b558f936a955d5346cbc5912c4ef12b08196eb1a5c8258150075cab8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AlgHom/Variant2f32362b558f936a955d5346cbc5912c4ef12b08196eb1a5c8258150075cab8d.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec539d09a6b2f3126edbb7af5f202de3a91e2fd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
