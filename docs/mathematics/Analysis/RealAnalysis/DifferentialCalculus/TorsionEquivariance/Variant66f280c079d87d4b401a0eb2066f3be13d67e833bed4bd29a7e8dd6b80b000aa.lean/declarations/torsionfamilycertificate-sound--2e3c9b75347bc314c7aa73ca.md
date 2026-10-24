# TorsionFamilyCertificate.sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:692aabdeb9cec1e5fba851f1c16b6ea9036a805dcb1e6d09ce67fa4848daec53",
  "kind": "def",
  "lexical_name": "TorsionFamilyCertificate.sound",
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
  "slug": "torsionfamilycertificate-sound--2e3c9b75347bc314c7aa73ca",
  "source": {
    "blob": "776cb73e7b78e4e9ed9fccb286422d7a260aa952",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e3c9b75347bc314c7aa73caf080b82d812295ebf171db4f79dc55d12e72026f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:692aabdeb9cec1e5fba851f1c16b6ea9036a805dcb1e6d09ce67fa4848daec53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TorsionFamilyCertificate.sound
    {family : TorsionFamily}
    (C : TorsionFamilyCertificate family) : Prop :=
  C.discreteAction ∧
    C.relaxedAction ∧
    C.reconstructionCompatibility ∧
    C.relaxationCommutes ∧
    C.reconstructionCommutes ∧
    C.equivariantBijection

/-- A family certificate proves exactly its six local obligations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/TorsionEquivariance/Variant66f280c079d87d4b401a0eb2066f3be13d67e833bed4bd29a7e8dd6b80b000aa.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `776cb73e7b78e4e9ed9fccb286422d7a260aa952` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
