# octahedralCapSurgerySound_cut6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85a265208ed42a97bc20dd425230ac12753fcf76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:319d8c2b-9dfc-1089-f9c6-7b1a5a54a483",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6d49cd3-43ea-ded8-d11b-b1ab16f2be73",
  "kind": "theorem",
  "lexical_name": "octahedralCapSurgerySound_cut6",
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
  "slug": "octahedralcapsurgerysound-cut6--b2a6e8dbd66d677ce76c6a18",
  "source": {
    "blob": "85a265208ed42a97bc20dd425230ac12753fcf76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2a6e8dbd66d677ce76c6a18247bee2502ae140b47d664709799887e3735b7d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6d49cd3-43ea-ded8-d11b-b1ab16f2be73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem octahedralCapSurgerySound_cut6 :
    OctahedralCapSurgerySound 6 := by
  constructor
  · rfl
  · intro edge
    cases edge with
    | xy xSign ySign => cases xSign <;> cases ySign <;> rfl
    | xz xSign zSign => cases xSign <;> cases zSign <;> rfl
    | yz ySign zSign => cases ySign <;> cases zSign <;> rfl

end Generated.TopologySurgeryFixture


open Lean

run_meta do
  let axioms ← Lean.collectAxioms `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut6
  let names := axioms.toList.map Name.toString |>.mergeSort (· < ·)
  let info ← getConstInfo `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut6
  let normalizedType := toString (← Meta.ppExpr info.type)
  let env ← getEnv
  let moduleSurface := env.constants.toList |>.filter (fun entry => (env.getModuleIdxFor? entry.1).isNone) |>.map (fun entry => entry.1.toString ++ "\u001f" ++ (if entry.2.isAxiom then "axiom" else if entry.2.isTheorem then "theorem" else "declaration") ++ "\u001f" ++ toString entry.2.type) |>.mergeSort (· < ·)
  let classifications :=
    (if Surface.Core.surfaceAdapterAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut6 then ["surface_adapter"] else []) ++
    (if Surface.Core.surfaceNovelAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut6 then ["surface_novel"] else []) ++
    (if Surface.Core.surfaceCandidateAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut6 then ["surface_candidate"] else []) ++
    (if Surface.Core.surfacePublishedAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut6 then ["surface_published"] else []) ++
    (if Surface.Core.surfaceCertificateAttr.hasTag env `Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut6 then ["surface_certificate"] else [])
  liftM <| IO.println <| Json.compress <| Json.mkObj [("schema", toJson "surface.refactor.axiom-probe.v1"), ("declaration", toJson "Generated.TopologySurgeryFixture.octahedralCapSurgerySound_cut6"), ("axioms", toJson names), ("normalizedType", toJson normalizedType), ("classificationTags", toJson classifications), ("isTheorem", toJson info.isTheorem), ("moduleDeclarationSurface", toJson moduleSurface)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant9a0afab061b3bdb7120c03d1eca6df2ef28de2bc02edfbbb59fda5724a466e9d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85a265208ed42a97bc20dd425230ac12753fcf76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
