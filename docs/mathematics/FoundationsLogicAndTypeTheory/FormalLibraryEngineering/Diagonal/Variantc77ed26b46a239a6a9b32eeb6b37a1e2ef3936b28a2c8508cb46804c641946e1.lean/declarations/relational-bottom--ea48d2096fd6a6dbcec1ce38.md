# relational_bottom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d08babc1-d423-97fa-f21f-148686684f85",
  "kind": "theorem",
  "lexical_name": "relational_bottom",
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
  "slug": "relational-bottom--ea48d2096fd6a6dbcec1ce38",
  "source": {
    "blob": "05824c89348203f442239a609d1e1bf4bed1e2fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2278,
    "line": 2265,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea48d2096fd6a6dbcec1ce38db951b6d75fd66a93649f2f626ce58e6d3a5b533",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d08babc1-d423-97fa-f21f-148686684f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2265–2278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relational_bottom : Proves P Γ γ L.bottom := by
  have wf := H.wf_typed KY KP
  have iv := H.diagonalPred_typed KY KP
  have hn := (H.diagonalPred_exact KY KP wf.1 wf.2).1.prove
    (H.induction_builder KY KP iv.1 iv.2 (H.diagonalPred_extensional KY KP)
      (H.negative_induction KY KP))
  exact L.imp_elim (H.diagonalQ_formula KY KP wf.1 wf.2) L.bottom_formula hn (H.wfQ KY KP)
end SpecializedCode.Formed
end PureTypeSystem.Labelled

namespace PureTypeSystem.Labelled.ChannelReturn
universe u
variable {S : Type u} {P : Specification S} {Γ : List (Expr S)} {γ : Nat → Mode}
  {C : Set (Set S)} {L : LogicSetup P Γ γ C} {K : ChannelSetup L} (R : ChannelReturn K)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagonal/Variantc77ed26b46a239a6a9b32eeb6b37a1e2ef3936b28a2c8508cb46804c641946e1.lean#L2265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05824c89348203f442239a609d1e1bf4bed1e2fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
