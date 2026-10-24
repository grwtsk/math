# composableProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80be4b1a6685474750df7db2d3e3ec3f372b3f5db09b6952004befcaa2b89022",
  "kind": "def",
  "lexical_name": "composableProperty",
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
  "slug": "composableproperty--e4304fdc365781dd1b2852b9",
  "source": {
    "blob": "f0fbf24c47782bfd67c020cf30bc981bf6a7f199",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Topology/Algebra/PortFiberRing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4304fdc365781dd1b2852b9a3fb379d9bf194b347adb277fec8c438ab3084af",
  "verification": {
    "reference": "docs/verification/Topology/Algebra/PortFiberRing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80be4b1a6685474750df7db2d3e3ec3f372b3f5db09b6952004befcaa2b89022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def composableProperty : GRWTSK.Topology.PortFiber.ComposableProperty P where
  Holds := fun p => RingCertificate P p
  identity := RingCertificate.identity P
  comp := fun hp hq => RingCertificate.comp P hp hq

end RingCertificate

variable [∀ A : P.Obj, TopologicalSpace (P.Fiber A)]

/-- One exact port map satisfies the ring laws and is continuous.

Both fields are propositions. `ring.hom` reconstructs the bundled homomorphism with exactly
`P.map p` as its function; its continuity cannot concern a different function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/Algebra/PortFiberRing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Algebra/PortFiberRing.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0fbf24c47782bfd67c020cf30bc981bf6a7f199` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
