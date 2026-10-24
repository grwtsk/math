# prototypeOpenObligationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74e1e8b4920e9651d5cedab67cc3b8b4fb7a8bdfeaa27adc78ca9a5845889973",
  "kind": "def",
  "lexical_name": "prototypeOpenObligationRecord",
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
  "slug": "prototypeopenobligationrecord--32a23204ce7b2c86867e0479",
  "source": {
    "blob": "2384d786492bf0b262baf42b28eff7be13ad0358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 251,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32a23204ce7b2c86867e04791d7e4d36a22ff8a568bbb92a9a0febf0762631fc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74e1e8b4920e9651d5cedab67cc3b8b4fb7a8bdfeaa27adc78ca9a5845889973`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeOpenObligationRecord
    (model : PrototypeModel) :
    Surface.ContinuousAssurance.WorldModel.ObligationRecord where
  identity := ⟨"obligation:" ++ (prototypeModelId model).value ++ ":boundary"⟩
  statement := "No canonical model boundary or complete compiled trusted-base binding is claimed."
  owner := .leanSemantics
  assumptions := [prototypeAssumptionId model]
  affectedObjects := [prototypeObjectId model]
  status := .open
  dischargeArtifact := none
  discharged_names_artifact := by simp
  supersedes := none

/-- Minimal wrapper: domain declarations remain in their defining owners. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2384d786492bf0b262baf42b28eff7be13ad0358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
