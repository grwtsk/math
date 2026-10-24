# HomotopyGroup.genLoopEquivOfUnique_transAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a779ff99-6cb3-ce07-e5f2-3ca0fda3e3dd",
  "kind": "lemma",
  "lexical_name": "HomotopyGroup.genLoopEquivOfUnique_transAt",
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
  "slug": "homotopygroup-genloopequivofunique-transat--3af9b9996038694b7d30a8fa",
  "source": {
    "blob": "c8e10a052b13cd9076637537a1c01aedae2a2cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 541,
    "path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3af9b9996038694b7d30a8fa960e97374ff7b574dd05f840a9eea76c4d5fe90f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a779ff99-6cb3-ce07-e5f2-3ca0fda3e3dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 541–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HomotopyGroup.genLoopEquivOfUnique_transAt (N) [DecidableEq N] [Unique N] (p q : Ω^ N X x) :
    genLoopEquivOfUnique _ (transAt default q p) =
      (genLoopEquivOfUnique _ q).trans (genLoopEquivOfUnique _ p) := by
  ext t
  simp only [genLoopEquivOfUnique, GenLoop.transAt, GenLoop.copy,
    one_div, ContinuousMap.coe_mk, Path.coe_mk', Path.trans,
    Function.comp_apply]
  refine ite_congr rfl (fun _ ↦ congrArg q ?_)
    fun _ ↦ congrArg p ?_
  <;> (ext i; rw [Unique.eq_default i]; simp)

namespace HomotopyGroup

/-- Group structure on `HomotopyGroup N X x` for nonempty `N` (in particular `π_(n+1) X x`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean#L541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8e10a052b13cd9076637537a1c01aedae2a2cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
