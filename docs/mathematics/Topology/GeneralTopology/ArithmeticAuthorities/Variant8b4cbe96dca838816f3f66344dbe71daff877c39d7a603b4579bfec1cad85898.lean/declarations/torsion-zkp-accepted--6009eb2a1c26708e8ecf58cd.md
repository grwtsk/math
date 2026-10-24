# torsion_zkp_accepted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3fa389ab-b5c7-f12f-01a9-74030549c9be",
  "kind": "theorem",
  "lexical_name": "torsion_zkp_accepted",
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
  "slug": "torsion-zkp-accepted--6009eb2a1c26708e8ecf58cd",
  "source": {
    "blob": "e715da0c0504a2ae1b1c61a4bbee5474143d482d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 258,
    "path": "GRWTSK/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6009eb2a1c26708e8ecf58cdd972ca7f9dc7060a8999e35ea798412161360910",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fa389ab-b5c7-f12f-01a9-74030549c9be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem torsion_zkp_accepted
    (A : ZKPTorsionAuthority) :
    EllipticTorsionAuthority.accepted (.zkp A) = true := rfl

/-! ## 5. Torsionless homology shadow -/

/--
A torsionless homology shadow.

This records finite homological data after field-coefficient or torsion-forgetting
linearization. It is useful as a finite observable but cannot itself identify
Mordell-Weil torsion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArithmeticAuthorities/Variant8b4cbe96dca838816f3f66344dbe71daff877c39d7a603b4579bfec1cad85898.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e715da0c0504a2ae1b1c61a4bbee5474143d482d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
