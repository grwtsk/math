# gc_map_comap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:261c0aa4-8318-e074-0413-1401500ce97a",
  "kind": "theorem",
  "lexical_name": "gc_map_comap",
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
  "slug": "gc-map-comap--1acd2681b0a3a1e86fb640af",
  "source": {
    "blob": "a7d75728e766554caedb16887bb921bed1a5705a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 540,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subfield/Variantaf7fb301f39bb3d592109f9ddbabb37364c4d3a527c3992289eca1a966020160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1acd2681b0a3a1e86fb640af5bfd66b99e4e8dc546523ab2b5c856b7f181a732",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subfield/Variantaf7fb301f39bb3d592109f9ddbabb37364c4d3a527c3992289eca1a966020160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:261c0aa4-8318-e074-0413-1401500ce97a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 540–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gc_map_comap (f : K →+* L) : GaloisConnection (map f) (comap f) := fun _ _ =>
  map_le_iff_le_comap
#align subfield.gc_map_comap Subfield.gc_map_comap

end Subfield

namespace RingHom

variable (g : L →+* M) (f : K →+* L)

/-! # range -/


/-- The range of a ring homomorphism, as a subfield of the target. See Note [range copy pattern]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subfield/Variantaf7fb301f39bb3d592109f9ddbabb37364c4d3a527c3992289eca1a966020160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subfield/Variantaf7fb301f39bb3d592109f9ddbabb37364c4d3a527c3992289eca1a966020160.lean#L540).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7d75728e766554caedb16887bb921bed1a5705a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
