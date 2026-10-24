# sheafOfModulesEquivOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee9372f670ebd20e101b3d7d441ace63f53a7ae79514aa30d19b4f209d7a7301",
  "kind": "def",
  "lexical_name": "sheafOfModulesEquivOver",
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
  "slug": "sheafofmodulesequivover--2feead1e199a3698b8e29d38",
  "source": {
    "blob": "83b4615f72f0eb91f99f480f2bb73b33736c1bfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/Module/Variant3bdb99286b76039773a06867b3a4afd1ce349b1dad401ab1a1c6515e831050c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2feead1e199a3698b8e29d3858121acf8ee12067ae6d9f5b2ca1aaa989ef3cd0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Module/Variant3bdb99286b76039773a06867b3a4afd1ce349b1dad401ab1a1c6515e831050c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee9372f670ebd20e101b3d7d441ace63f53a7ae79514aa30d19b4f209d7a7301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafOfModulesEquivOver :
    SheafOfModules.{w} (R.over U) ≌ SheafOfModules.{w} (U.sheafRestrict.obj R) := by
  refine SheafOfModules.pushforwardPushforwardEquivalence (eqv := U.overEquivalence.symm)
    (U.overPullbackSheafEquivOver.app _).inv (U.sheafRestrictSheafEquivOver.app _).inv rfl ?_
  ext : 2
  simp [overPullbackSheafEquivOver, sheafRestrictSheafEquivOver, eqToHom_map, overEquivalence,
    IsOpenMap.functor]

/-- `sheafOfModulesEquivOver` takes `R.over U` to `R |_ U`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Module/Variant3bdb99286b76039773a06867b3a4afd1ce349b1dad401ab1a1c6515e831050c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Module/Variant3bdb99286b76039773a06867b3a4afd1ce349b1dad401ab1a1c6515e831050c7.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b4615f72f0eb91f99f480f2bb73b33736c1bfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
