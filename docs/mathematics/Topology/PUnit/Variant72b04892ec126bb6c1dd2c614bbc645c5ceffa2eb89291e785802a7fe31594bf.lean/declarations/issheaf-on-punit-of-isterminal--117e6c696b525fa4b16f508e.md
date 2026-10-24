# isSheaf_on_punit_of_isTerminal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:569f650a-cdc4-ec8d-2aa8-4a7cd3575ea1",
  "kind": "theorem",
  "lexical_name": "isSheaf_on_punit_of_isTerminal",
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
  "slug": "issheaf-on-punit-of-isterminal--117e6c696b525fa4b16f508e",
  "source": {
    "blob": "622df47800a0c2494922016adff5c0fd2d112425",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 60,
    "path": "GRWTSK/Topology/PUnit/Variant72b04892ec126bb6c1dd2c614bbc645c5ceffa2eb89291e785802a7fe31594bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:117e6c696b525fa4b16f508e719c104326e74f310941538dc22bbdd1c82439b2",
  "verification": {
    "reference": "docs/verification/Topology/PUnit/Variant72b04892ec126bb6c1dd2c614bbc645c5ceffa2eb89291e785802a7fe31594bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:569f650a-cdc4-ec8d-2aa8-4a7cd3575ea1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_on_punit_of_isTerminal (F : Presheaf C ↧PUnit)
    (it : IsTerminal <| F.obj <| op ⊥) : F.IsSheaf :=
  isSheaf_of_isTerminal_of_indiscrete (@Subsingleton.elim (TopologicalSpace PUnit) _ _ _) F it

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/PUnit/Variant72b04892ec126bb6c1dd2c614bbc645c5ceffa2eb89291e785802a7fe31594bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/PUnit/Variant72b04892ec126bb6c1dd2c614bbc645c5ceffa2eb89291e785802a7fe31594bf.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `622df47800a0c2494922016adff5c0fd2d112425` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
