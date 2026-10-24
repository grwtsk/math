# forwardSegment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f52cd6fd52987e9a229a0e8a9f2f01a71d55d1a6c77315468c5c42aefd2d67ac",
  "kind": "def",
  "lexical_name": "forwardSegment",
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
  "slug": "forwardsegment--55ab597cc749f4822e64a50b",
  "source": {
    "blob": "a4e32e796f5cfd63530f1204f61d94bba90d5a38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55ab597cc749f4822e64a50ba82d8d7e5867823b80b259f9de24d38e174b34ba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f52cd6fd52987e9a229a0e8a9f2f01a71d55d1a6c77315468c5c42aefd2d67ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forwardSegment (cycle : DirectedCycleQuantum X) (start : Nat) :
    Nat → Equiv.Perm X
  | 0 => 1
  | k + 1 => cycle.edgePermAt (start + k) * cycle.forwardSegment start k

/-- Prefix lengths include both zero and the complete period. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4e32e796f5cfd63530f1204f61d94bba90d5a38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
