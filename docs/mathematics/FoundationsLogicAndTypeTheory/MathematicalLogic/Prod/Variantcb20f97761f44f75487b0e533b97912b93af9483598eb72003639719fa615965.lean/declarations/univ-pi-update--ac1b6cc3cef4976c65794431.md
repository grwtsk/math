# univ_pi_update

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0c062fa-a6b4-37aa-a5e7-f85e7de668bb",
  "kind": "theorem",
  "lexical_name": "univ_pi_update",
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
  "slug": "univ-pi-update--ac1b6cc3cef4976c65794431",
  "source": {
    "blob": "c39088ed5447a088939edfa8a34a1a43284d6676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 838,
    "line": 833,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac1b6cc3cef4976c6579443194440095a77778d46b2d4d4063b5c968754c84b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0c062fa-a6b4-37aa-a5e7-f85e7de668bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 833–838.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem univ_pi_update [DecidableEq ι] {β : ∀ _, Type*} (i : ι) (f : ∀ j, α j) (a : α i)
    (t : ∀ j, α j → Set (β j)) :
    (pi univ fun j => t j (update f i a j)) = { x | x i ∈ t i a } ∩ pi {i}ᶜ fun j => t j (f j) :=
  by rw [compl_eq_univ_diff, ← pi_update_of_mem (mem_univ _)]
#align set.univ_pi_update Set.univ_pi_update

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Prod/Variantcb20f97761f44f75487b0e533b97912b93af9483598eb72003639719fa615965.lean#L833).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c39088ed5447a088939edfa8a34a1a43284d6676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
