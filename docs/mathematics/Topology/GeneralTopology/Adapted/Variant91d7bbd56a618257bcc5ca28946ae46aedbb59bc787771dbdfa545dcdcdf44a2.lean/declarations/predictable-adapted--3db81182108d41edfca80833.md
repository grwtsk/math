# Predictable.adapted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6da4ab34-ca91-81f2-f9af-fe14282b5080",
  "kind": "theorem",
  "lexical_name": "Predictable.adapted",
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
  "slug": "predictable-adapted--3db81182108d41edfca80833",
  "source": {
    "blob": "5742ca511fdf56398d41b15714e476b1e454d9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3db81182108d41edfca80833e1ad5c949d6c3be2d2b1ea1af3b2a78f4a6fad3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6da4ab34-ca91-81f2-f9af-fe14282b5080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Predictable.adapted {f : Filtration ℕ m} {u : ℕ → Ω → β} (hu : Adapted f fun n => u (n + 1))
    (hu0 : StronglyMeasurable[f 0] (u 0)) : Adapted f u := fun n =>
  match n with
  | 0 => hu0
  | n + 1 => (hu n).mono (f.mono n.le_succ)

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adapted/Variant91d7bbd56a618257bcc5ca28946ae46aedbb59bc787771dbdfa545dcdcdf44a2.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5742ca511fdf56398d41b15714e476b1e454d9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
