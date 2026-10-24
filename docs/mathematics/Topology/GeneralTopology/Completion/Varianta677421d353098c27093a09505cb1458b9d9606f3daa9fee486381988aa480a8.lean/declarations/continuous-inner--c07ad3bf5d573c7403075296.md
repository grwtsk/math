# continuous_inner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b404b6f-cc82-3e29-1ae5-09d1627572e1",
  "kind": "theorem",
  "lexical_name": "continuous_inner",
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
  "slug": "continuous-inner--c07ad3bf5d573c7403075296",
  "source": {
    "blob": "a9c3286ad4b7bee988ef64023c081bdee70babcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c07ad3bf5d573c740307529684bbed92f84543c5a4406e07048f1868a95d062b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b404b6f-cc82-3e29-1ae5-09d1627572e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem continuous_inner :
    Continuous (uncurry (inner 𝕜 (E := Completion E))) := by
  let inner' : E →+ E →+ 𝕜 :=
    { toFun := fun x => (innerₛₗ 𝕜 x).toAddMonoidHom
      map_zero' := by ext x; exact inner_zero_left _
      map_add' := fun x y => by ext z; exact inner_add_left _ _ _ }
  have : Continuous fun p : E × E => inner' p.1 p.2 := continuous_inner
  rw [Completion.toInner, inner, uncurry_curry _]
  change
    Continuous
      (((isDenseInducing_toCompl E).prodMap (isDenseInducing_toCompl E)).extend fun p : E × E =>
        inner' p.1 p.2)
  exact (isDenseInducing_toCompl E).extend_Z_bilin (isDenseInducing_toCompl E) this

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completion/Varianta677421d353098c27093a09505cb1458b9d9606f3daa9fee486381988aa480a8.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c3286ad4b7bee988ef64023c081bdee70babcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
