# coe_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7184822e-2cd7-c452-636e-1301c13eb6d6",
  "kind": "lemma",
  "lexical_name": "coe_sum",
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
  "slug": "coe-sum--df2577b24a4a2542ecb4bda8",
  "source": {
    "blob": "dba3ff124acba0d76d7c945eba80379fb8982fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 247,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df2577b24a4a2542ecb4bda8f3a650c07ed57225f08fa3f7099536c8a6cf7041",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7184822e-2cd7-c452-636e-1301c13eb6d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma coe_sum {ι : Type*} (s : Finset ι)
    (f : ι → C(X, R)₀) : ⇑(s.sum f) = s.sum (fun i => ⇑(f i)) :=
  map_sum coeFnAddMonoidHom f s

end Semiring

section Ring

variable {X R : Type*} [Zero X] [TopologicalSpace X]
variable [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dba3ff124acba0d76d7c945eba80379fb8982fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
