# Absorbs.union

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3b6e737-7ac9-1f37-4416-9b63eabbf494",
  "kind": "theorem",
  "lexical_name": "Absorbs.union",
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
  "slug": "absorbs-union--98fecfad8e081b6bf009a8e0",
  "source": {
    "blob": "f2ed60f15d24dc8b62d341f03cd555c26f2c89a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98fecfad8e081b6bf009a8e081f135dead4301adcd3bbd5715c953c556a5d3aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3b6e737-7ac9-1f37-4416-9b63eabbf494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Absorbs.union (hu : Absorbs 𝕜 s u) (hv : Absorbs 𝕜 s v) : Absorbs 𝕜 s (u ∪ v) := by
  obtain ⟨a, ha, hu⟩ := hu
  obtain ⟨b, _hb, hv⟩ := hv
  exact
    ⟨max a b, lt_max_of_lt_left ha, fun c hc =>
      union_subset (hu _ <| le_of_max_le_left hc) (hv _ <| le_of_max_le_right hc)⟩
#align absorbs.union Absorbs.union

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant74fdaf7302d52c9e0c5b2c98ac39773ec99eb4bf07af39fb9c5e6909895d2207.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2ed60f15d24dc8b62d341f03cd555c26f2c89a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
