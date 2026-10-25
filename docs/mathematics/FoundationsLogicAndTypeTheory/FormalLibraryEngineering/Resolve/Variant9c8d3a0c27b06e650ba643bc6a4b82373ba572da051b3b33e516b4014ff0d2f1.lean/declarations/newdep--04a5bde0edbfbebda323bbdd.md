# newDep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38b5f9758f69204a3bed6f8adc54e6077c2c9b7681e64cb4b7e3018ce141735e",
  "kind": "def",
  "lexical_name": "newDep",
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
  "slug": "newdep--04a5bde0edbfbebda323bbdd",
  "source": {
    "blob": "65f8fed0afd70a439a4e611a1d9aa029e0f7f523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04a5bde0edbfbebda323bbdd1ca57ec4fe7339bf1b465457a4d413718243bac9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38b5f9758f69204a3bed6f8adc54e6077c2c9b7681e64cb4b7e3018ce141735e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] def newDep
  (s : ResolveState n) (dep : MaterializedDep)
  (lakeOpts : NameMap String) (leanOpts : Options) (reconfigure : Bool)
: LogIO (ResolveState n) := do
  let {ws, depIdxs, lt_of_mem, start_le} := s
  let wsIdx := ws.packages.size
  let ⟨ws', h⟩ ← ws.addDepPackage' dep lakeOpts leanOpts reconfigure
  have lt_of_mem := by
    intro i i_mem
    cases Array.mem_push.mp i_mem with
    | inl i_mem => exact h ▸ Nat.lt_add_one_of_lt (lt_of_mem i i_mem)
    | inr i_eq => simp only [wsIdx, i_eq, h, Nat.lt_add_one]
  have start_le := Nat.le_trans start_le <| h ▸ Nat.le_add_right ..
  return ⟨ws', depIdxs.push wsIdx, lt_of_mem, start_le⟩

end ResolveState

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Resolve/Variant9c8d3a0c27b06e650ba643bc6a4b82373ba572da051b3b33e516b4014ff0d2f1.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f8fed0afd70a439a4e611a1d9aa029e0f7f523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
