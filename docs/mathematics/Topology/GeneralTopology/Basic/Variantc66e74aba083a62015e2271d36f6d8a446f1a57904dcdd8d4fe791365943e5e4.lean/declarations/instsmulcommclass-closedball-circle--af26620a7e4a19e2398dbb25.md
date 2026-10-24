# instSMulCommClass_closedBall_circle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c26196f57600cdbc4a6d97e8cfb88099bd4de5a23bada6f22b1be30a009b87be",
  "kind": "instance",
  "lexical_name": "instSMulCommClass_closedBall_circle",
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
  "slug": "instsmulcommclass-closedball-circle--af26620a7e4a19e2398dbb25",
  "source": {
    "blob": "681ea575930a3545cf72692023cfb0bbc4b31eb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 414,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc66e74aba083a62015e2271d36f6d8a446f1a57904dcdd8d4fe791365943e5e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af26620a7e4a19e2398dbb25ddb166347291cb135fe1aee6c3613d79adf90609",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc66e74aba083a62015e2271d36f6d8a446f1a57904dcdd8d4fe791365943e5e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c26196f57600cdbc4a6d97e8cfb88099bd4de5a23bada6f22b1be30a009b87be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulCommClass_closedBall_circle : SMulCommClass 𝕔𝔻 Circle 𝔻 :=
  SMulCommClass.symm _ _ _

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc66e74aba083a62015e2271d36f6d8a446f1a57904dcdd8d4fe791365943e5e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc66e74aba083a62015e2271d36f6d8a446f1a57904dcdd8d4fe791365943e5e4.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `681ea575930a3545cf72692023cfb0bbc4b31eb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
