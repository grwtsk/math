# coe_toDualBotEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7bab6bd-9922-51b8-43f9-f8d4e50d2f3d",
  "kind": "theorem",
  "lexical_name": "coe_toDualBotEquiv",
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
  "slug": "coe-todualbotequiv--c645c105e55f25d793126c0a",
  "source": {
    "blob": "a314d04d3aa1c0af6bda0373c2595740229940ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1321,
    "line": 1309,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb816f65cc9480943fedf68e72250269f834ec0315cccf7e25dd176095a5f6257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c645c105e55f25d793126c0a39abfb8c7e9fdc11d4f122378f1a237b9f7a8c31",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb816f65cc9480943fedf68e72250269f834ec0315cccf7e25dd176095a5f6257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7bab6bd-9922-51b8-43f9-f8d4e50d2f3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1309–1321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_toDualBotEquiv [LE α] :
    (WithTop.toDualBotEquiv : WithTop αᵒᵈ → (WithBot α)ᵒᵈ) = toDual ∘ WithTop.ofDual :=
  funext fun _ => rfl
#align with_top.coe_to_dual_bot_equiv_eq WithTop.coe_toDualBotEquiv

end WithTop

namespace OrderIso

variable [PartialOrder α] [PartialOrder β] [PartialOrder γ]

/-- A version of `Equiv.optionCongr` for `WithTop`. -/
@[simps! apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb816f65cc9480943fedf68e72250269f834ec0315cccf7e25dd176095a5f6257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantb816f65cc9480943fedf68e72250269f834ec0315cccf7e25dd176095a5f6257.lean#L1309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a314d04d3aa1c0af6bda0373c2595740229940ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
