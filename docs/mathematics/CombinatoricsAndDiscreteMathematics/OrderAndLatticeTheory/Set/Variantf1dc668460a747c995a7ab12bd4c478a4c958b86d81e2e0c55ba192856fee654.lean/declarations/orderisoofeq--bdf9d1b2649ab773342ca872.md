# orderIsoOfEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ad244f2a6a524ef08701bbbc603bf3eeb081c21bb78bf26170cbdaead7cc61d",
  "kind": "def",
  "lexical_name": "orderIsoOfEq",
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
  "slug": "orderisoofeq--bdf9d1b2649ab773342ca872",
  "source": {
    "blob": "d71a3bf940ac7ba67dca407c62aed9981c90e6b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 56,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdf9d1b2649ab773342ca872f4261b7a747ac984b4b1ea6d3867b8a3555c51a5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ad244f2a6a524ef08701bbbc603bf3eeb081c21bb78bf26170cbdaead7cc61d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderIsoOfEq (s t : Set α) (h : s = t) : s ≃o t where
  toEquiv := equivOfEq h
  map_rel_iff' := Iff.rfl

@[deprecated (since := "2026-08-29")] alias _root_.OrderIso.Set.congr := orderIsoOfEq
@[deprecated (since := "2026-08-29")] alias _root_.OrderIso.Set.congr_apply := orderIsoOfEq_apply
@[deprecated (since := "2026-08-29")]
alias _root_.OrderIso.Set.congr_symm_apply := orderIsoOfEq_symm_apply

end Preorder

end Set

namespace OrderIso

section LE

variable [LE α] [LE β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variantf1dc668460a747c995a7ab12bd4c478a4c958b86d81e2e0c55ba192856fee654.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d71a3bf940ac7ba67dca407c62aed9981c90e6b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
