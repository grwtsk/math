# BehaviorallyEquivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5005e00fb49c04a603f99a306f49122318c64a13d4cbedd4a8ba07227d1d01cd",
  "kind": "def",
  "lexical_name": "BehaviorallyEquivalent",
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
  "slug": "behaviorallyequivalent--7d348865719d24efa53e384a",
  "source": {
    "blob": "1eca0b6ec7b456443ad355f095c666db294d2a00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variant73b9ff3f30809a343b73f484e134309aa568e143b35e9eeffb1e239100a6666b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d348865719d24efa53e384a4e580ef37970113c37ab8b2b9267463254cb6d31",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variant73b9ff3f30809a343b73f484e134309aa568e143b35e9eeffb1e239100a6666b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5005e00fb49c04a603f99a306f49122318c64a13d4cbedd4a8ba07227d1d01cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BehaviorallyEquivalent
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    (left right : State) : Prop :=
  ∀ continuation,
    profile.observe continuation left =
      profile.observe continuation right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variant73b9ff3f30809a343b73f484e134309aa568e143b35e9eeffb1e239100a6666b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variant73b9ff3f30809a343b73f484e134309aa568e143b35e9eeffb1e239100a6666b.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eca0b6ec7b456443ad355f095c666db294d2a00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
