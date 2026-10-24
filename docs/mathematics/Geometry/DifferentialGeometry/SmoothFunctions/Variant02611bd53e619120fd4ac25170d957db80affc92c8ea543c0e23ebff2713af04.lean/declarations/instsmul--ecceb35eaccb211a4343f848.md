# instSMul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ea461f1947e50b397ed1e100bb131662126ecc894d448ffe2f4ac3307a208cf",
  "kind": "instance",
  "lexical_name": "instSMul'",
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
  "slug": "instsmul--ecceb35eaccb211a4343f848",
  "source": {
    "blob": "ace864e66f99f33cf6676f77febc2ca7dedf8434",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 313,
    "path": "GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecceb35eaccb211a4343f84897685773e82d129925b547da95d0eb2e8a0c0976",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ea461f1947e50b397ed1e100bb131662126ecc894d448ffe2f4ac3307a208cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMul' {V : Type*} [NormedAddCommGroup V] [NormedSpace 𝕜 V] :
    SMul C^n⟮I, N; 𝕜⟯ C^n⟮I, N; 𝓘(𝕜, V), V⟯ :=
  ⟨fun f g => ⟨fun x => f x • g x, ContMDiff.smul f.2 g.2⟩⟩

/-- The left multiplication with a `C^n` scalar function commutes with composition. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/SmoothFunctions/Variant02611bd53e619120fd4ac25170d957db80affc92c8ea543c0e23ebff2713af04.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ace864e66f99f33cf6676f77febc2ca7dedf8434` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
