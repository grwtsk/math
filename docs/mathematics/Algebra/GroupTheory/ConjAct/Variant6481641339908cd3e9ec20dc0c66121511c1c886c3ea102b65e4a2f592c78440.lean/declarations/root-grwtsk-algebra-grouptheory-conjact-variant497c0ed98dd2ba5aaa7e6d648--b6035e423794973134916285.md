# _root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variant497c0ed98dd2ba5aaa7e6d648853e66463a9ebfd34da66b2eac24ee77f132191.Subgroup.centralizer_eq_comap_stabilizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d395992b-08ec-7276-0a6d-3fd6a056099f",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variant497c0ed98dd2ba5aaa7e6d648853e66463a9ebfd34da66b2eac24ee77f132191.Subgroup.centralizer_eq_comap_stabilizer",
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
  "slug": "root-grwtsk-algebra-grouptheory-conjact-variant497c0ed98dd2ba5aaa7e6d648--b6035e423794973134916285",
  "source": {
    "blob": "14d02f874d70f3a5be3604f4b5b2f36a95398309",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 231,
    "path": "GRWTSK/Algebra/GroupTheory/ConjAct/Variant6481641339908cd3e9ec20dc0c66121511c1c886c3ea102b65e4a2f592c78440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6035e423794973134916285f88b1aa5bf823c419407aec696ed7e209fc9e46c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ConjAct/Variant6481641339908cd3e9ec20dc0c66121511c1c886c3ea102b65e4a2f592c78440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d395992b-08ec-7276-0a6d-3fd6a056099f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variant497c0ed98dd2ba5aaa7e6d648853e66463a9ebfd34da66b2eac24ee77f132191.Subgroup.centralizer_eq_comap_stabilizer (g : G) :
    Subgroup.centralizer {g} = Subgroup.comap ConjAct.toConjAct.toMonoidHom
      (MulAction.stabilizer (ConjAct G) g) := by
  ext k
-- NOTE: `Subgroup.mem_centralizer_iff` should probably be stated
-- with the equality in the other direction
  simp only [mem_centralizer_iff, Set.mem_singleton_iff, forall_eq]
  rw [eq_comm]
  exact Iff.symm mul_inv_eq_iff_eq_mul

/-- As normal subgroups are closed under conjugation, they inherit the conjugation action
  of the underlying group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ConjAct/Variant6481641339908cd3e9ec20dc0c66121511c1c886c3ea102b65e4a2f592c78440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ConjAct/Variant6481641339908cd3e9ec20dc0c66121511c1c886c3ea102b65e4a2f592c78440.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14d02f874d70f3a5be3604f4b5b2f36a95398309` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
