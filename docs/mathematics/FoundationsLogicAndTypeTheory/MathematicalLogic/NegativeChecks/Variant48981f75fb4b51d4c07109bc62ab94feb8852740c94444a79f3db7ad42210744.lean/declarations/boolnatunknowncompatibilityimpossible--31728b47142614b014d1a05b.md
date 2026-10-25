# boolNatUnknownCompatibilityImpossible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65f4e7f7-ed2d-7a0f-8190-2eb3619103ef",
  "kind": "theorem",
  "lexical_name": "boolNatUnknownCompatibilityImpossible",
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
  "slug": "boolnatunknowncompatibilityimpossible--31728b47142614b014d1a05b",
  "source": {
    "blob": "a08e76759f66af50c4465ca60691b14335aca33f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31728b47142614b014d1a05bf8c6d08dac8abebf4f8857f6dd1d7f4ad17f33d9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65f4e7f7-ed2d-7a0f-8190-2eb3619103ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boolNatUnknownCompatibilityImpossible
    (compatibility : QuantifierUnspecifiedCompatibility
      (carrierTheory Bool) (carrierTheory Nat)
      (fun value : Bool => if value then (1 : Nat) else 0)
      unknownCarrierProfile unknownCarrierProfile) : False := by
  have unknown : unknownCarrierProfile.HasUnspecified := Or.inl rfl
  cases compatibility with
  | fullySpecified sourceSpecified _ _ _ _ => exact sourceSpecified unknown
  | evidenced carrierEquivalence _ _ _ =>
      exact boolNatNoCarrierEquivalence carrierEquivalence

end OD

namespace OneWayProfile

open FCRS.Transport
open Adapters.FCRSTransport

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a08e76759f66af50c4465ca60691b14335aca33f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
