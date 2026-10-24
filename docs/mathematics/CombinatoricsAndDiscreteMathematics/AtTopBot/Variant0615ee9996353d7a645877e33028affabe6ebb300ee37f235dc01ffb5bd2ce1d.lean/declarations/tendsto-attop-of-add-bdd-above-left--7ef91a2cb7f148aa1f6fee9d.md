# tendsto_atTop_of_add_bdd_above_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3ef8ed3-5ca6-f3eb-2d5f-60c38db06157",
  "kind": "theorem",
  "lexical_name": "tendsto_atTop_of_add_bdd_above_left",
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
  "slug": "tendsto-attop-of-add-bdd-above-left--7ef91a2cb7f148aa1f6fee9d",
  "source": {
    "blob": "7f615d8a1455f8dcca79ade0cd848c1c560026c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 797,
    "line": 792,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ef91a2cb7f148aa1f6fee9d4b6738485ac4369f3f5b8976df85611fb5905c61",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3ef8ed3-5ca6-f3eb-2d5f-60c38db06157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 792–797.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_atTop_of_add_bdd_above_left (C) (hC : ∀ x, f x ≤ C) :
    Tendsto (fun x => f x + g x) l atTop → Tendsto g l atTop :=
  tendsto_atTop_of_add_bdd_above_left' C (univ_mem' hC)
#align filter.tendsto_at_top_of_add_bdd_above_left Filter.tendsto_atTop_of_add_bdd_above_left

-- porting note: the "order dual" trick timeouts
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AtTopBot/Variant0615ee9996353d7a645877e33028affabe6ebb300ee37f235dc01ffb5bd2ce1d.lean#L792).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f615d8a1455f8dcca79ade0cd848c1c560026c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
