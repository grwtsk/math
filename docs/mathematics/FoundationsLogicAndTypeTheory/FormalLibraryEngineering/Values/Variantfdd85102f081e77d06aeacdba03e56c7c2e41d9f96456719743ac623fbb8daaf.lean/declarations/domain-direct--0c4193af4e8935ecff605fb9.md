# domain_direct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc103e0c-3932-3de4-282b-441eec9a74b8",
  "kind": "theorem",
  "lexical_name": "domain_direct",
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
  "slug": "domain-direct--0c4193af4e8935ecff605fb9",
  "source": {
    "blob": "b79491536ecbeb8d18e8c0c024fd6a0735fd5a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c4193af4e8935ecff605fb94c4429722d786e7258aeee2395c96c3d9163c77f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc103e0c-3932-3de4-282b-441eec9a74b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domain_direct (hC : IsComponent (PrimaryEdge P) C)
    (hK : Ω.profile T.type ∈ C) (hL : Ω.profile (a.target hw).type ∈ C)
    (hd : ActiveLayer P C (Ω.profile a.domain)) : DirectLayer P C (Ω.profile a.domain) := by
  obtain ⟨J, hf, hp, _⟩ := a.profile_data hw
  have hl : Ω.profile (a.body.instantiate a.argument) ∈ C := by
    simpa only [target, ContextTower.profile_normalForm] using hL
  have hj : J ∈ C := hC.between hl hK hp.reach (.single (.codomain hf))
  exact ⟨hd.layer, J, hj, Ω.profile T.type, hK, hf⟩

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Values/Variantfdd85102f081e77d06aeacdba03e56c7c2e41d9f96456719743ac623fbb8daaf.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b79491536ecbeb8d18e8c0c024fd6a0735fd5a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
