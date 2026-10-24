# setOfTop_eq_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e051d86-412a-c5ff-03cb-38337f364b27",
  "kind": "theorem",
  "lexical_name": "setOfTop_eq_univ",
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
  "slug": "setoftop-eq-univ--5cc8c4008d3e1524d6d550e7",
  "source": {
    "blob": "3a82c1178597718c1111c380bcdf28d328897e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cc8c4008d3e1524d6d550e7c5605f6905af4ce489e2117d2978d1c45e6cab65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e051d86-412a-c5ff-03cb-38337f364b27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setOfTop_eq_univ [Nontrivial R] : setOfIdeal (⊤ : Ideal C(X, R)) = Set.univ :=
  Set.univ_subset_iff.mp fun _ _ => mem_setOfIdeal.mpr ⟨1, Submodule.mem_top, one_ne_zero⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideals/Variant6f029f913a3b3c972099cef63f1cf37e16215af570c535abcb3712941afb18d4.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a82c1178597718c1111c380bcdf28d328897e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
