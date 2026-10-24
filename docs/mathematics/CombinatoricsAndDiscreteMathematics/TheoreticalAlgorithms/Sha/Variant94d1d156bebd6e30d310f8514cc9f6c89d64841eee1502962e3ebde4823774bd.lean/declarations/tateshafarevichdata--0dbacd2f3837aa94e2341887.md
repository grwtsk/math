# TateShafarevichData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebc967da2fea3062b90c222a6e8ce227869ee1140302710387123266c05a62ff",
  "kind": "structure",
  "lexical_name": "TateShafarevichData",
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
  "slug": "tateshafarevichdata--0dbacd2f3837aa94e2341887",
  "source": {
    "blob": "b7cdaccfe3301a1e850a0b5b32399377e081fa94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 35,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0dbacd2f3837aa94e234188750993e0d8f08993481c78ff145c4c5b84b83407f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebc967da2fea3062b90c222a6e8ce227869ee1140302710387123266c05a62ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TateShafarevichData
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) where
  groupCarrier : Type u
  zero : groupCarrier
  add : groupCarrier → groupCarrier → groupCarrier
  neg : groupCarrier → groupCarrier
  Torsor : Type u
  torsorClass :
    Torsor → groupCarrier
  LocalPlace : Type u
  localSoluble :
    LocalPlace → Torsor → Prop
  locallyTrivialSubgroup :
    GaloisCohomology.FiniteSubgroup
      ({ zero := zero, add := add, neg := neg } :
        GaloisCohomology.FiniteAdditiveStructure groupCarrier)
  finiteCohomologyProblem :
    GaloisCohomology.FiniteSelmerProblem.{u, u, u}
  classToFiniteH1 :
    groupCarrier →
      GaloisCohomology.FiniteH1
        finiteCohomologyProblem.G
        finiteCohomologyProblem.A
        finiteCohomologyProblem.ρG
  locallyTrivial_iff_finiteRestrictionZero :
    ∀ x : groupCarrier,
      locallyTrivialSubgroup.carrier x ↔
        ∀ place : finiteCohomologyProblem.V,
          GaloisCohomology.resFiniteH1
            (finiteCohomologyProblem.ιv place)
            (classToFiniteH1 x) =
              GaloisCohomology.FiniteH1.zero
                (finiteCohomologyProblem.Gv place)
                finiteCohomologyProblem.A
                (finiteCohomologyProblem.ρv place)
  weilChateletTorsorsRepresented : Prop
  weilChateletTorsorsRepresentedCertified :
    weilChateletTorsorsRepresented
  localSolubilityControlsLocallyTriviality : Prop
  localSolubilityControlsLocallyTrivialityCertified :
    localSolubilityControlsLocallyTriviality
  compatibleWithBaseNumberField : Prop
  compatibleWithBaseNumberFieldCertified :
    compatibleWithBaseNumberField
  compatibleWithSmoothCurve : Prop
  compatibleWithSmoothCurveCertified :
    compatibleWithSmoothCurve
  boundary : List String

namespace TateShafarevichData

/-- The additive structure carried by the chosen Weil-Chatelet/Sha carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sha/Variant94d1d156bebd6e30d310f8514cc9f6c89d64841eee1502962e3ebde4823774bd.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7cdaccfe3301a1e850a0b5b32399377e081fa94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
