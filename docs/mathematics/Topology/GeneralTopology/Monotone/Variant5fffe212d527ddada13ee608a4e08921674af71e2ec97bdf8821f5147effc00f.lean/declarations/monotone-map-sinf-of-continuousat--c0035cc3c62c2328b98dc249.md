# Monotone.map_sInf_of_continuousAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6cb1093-647d-ffa1-1e1b-09f9a538d0a3",
  "kind": "theorem",
  "lexical_name": "Monotone.map_sInf_of_continuousAt",
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
  "slug": "monotone-map-sinf-of-continuousat--c0035cc3c62c2328b98dc249",
  "source": {
    "blob": "23d35d5c3ca30d052656db7925a4ecb329cc4c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0035cc3c62c2328b98dc2495dfd8e911a2b226a1f1f8fd6fb7ec280a9127b76",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6cb1093-647d-ffa1-1e1b-09f9a538d0a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monotone.map_sInf_of_continuousAt {f : α → β} {s : Set α} (Cf : ContinuousAt f (sInf s))
    (Mf : Monotone f) (ftop : f ⊤ = ⊤) : f (sInf s) = sInf (f '' s) :=
  Monotone.map_sSup_of_continuousAt (α := αᵒᵈ) (β := βᵒᵈ) Cf Mf.dual ftop

/-- If a monotone function sending `top` to `top` is continuous at the indexed infimum over
a `Sort`, then it sends this indexed infimum to the indexed infimum of the composition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variant5fffe212d527ddada13ee608a4e08921674af71e2ec97bdf8821f5147effc00f.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23d35d5c3ca30d052656db7925a4ecb329cc4c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
