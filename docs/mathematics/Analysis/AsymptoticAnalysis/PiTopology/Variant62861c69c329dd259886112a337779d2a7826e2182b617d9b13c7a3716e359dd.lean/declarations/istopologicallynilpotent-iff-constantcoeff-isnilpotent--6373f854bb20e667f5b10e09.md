# isTopologicallyNilpotent_iff_constantCoeff_isNilpotent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fcde89c7724d56615e1558fa63832a25fe63c49d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6d09e04-f478-0b65-2985-673ace8178e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c1fda38-1d1f-7919-77b5-f5c0985c59a9",
  "kind": "theorem",
  "lexical_name": "isTopologicallyNilpotent_iff_constantCoeff_isNilpotent",
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
  "slug": "istopologicallynilpotent-iff-constantcoeff-isnilpotent--6373f854bb20e667f5b10e09",
  "source": {
    "blob": "fcde89c7724d56615e1558fa63832a25fe63c49d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 306,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6373f854bb20e667f5b10e09f90dd29569091a43b46902fc5b6a35a952f1445e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c1fda38-1d1f-7919-77b5-f5c0985c59a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isTopologicallyNilpotent_iff_constantCoeff_isNilpotent
    [CommRing R] [DiscreteTopology R] (f : PowerSeries R) :
    Tendsto (fun n : ℕ => f ^ n) atTop (nhds 0) ↔
      IsNilpotent (constantCoeff f) :=
  MvPowerSeries.WithPiTopology.isTopologicallyNilpotent_iff_constantCoeff_isNilpotent f

end WithPiTopology

end

section Summable

variable [Semiring R] [TopologicalSpace R]

open MvPowerSeries.WithPiTopology

variable {R}

-- NOTE : one needs an API to apply `Finsupp.uniqueLinearEquiv`
/-- A power series is the sum (in the sense of summable families) of its monomials -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcde89c7724d56615e1558fa63832a25fe63c49d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
