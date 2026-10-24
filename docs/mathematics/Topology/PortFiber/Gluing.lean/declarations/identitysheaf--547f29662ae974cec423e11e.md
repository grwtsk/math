# identitySheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5d7ec45c340b68a3dd53535b091bfd6b630d2b8f8f0e478493b3b65c3282287",
  "kind": "def",
  "lexical_name": "identitySheaf",
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
  "slug": "identitysheaf--547f29662ae974cec423e11e",
  "source": {
    "blob": "28bc13d2297559ea515bb04d793587f55ca05ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 95,
    "path": "GRWTSK/Topology/PortFiber/Gluing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:547f29662ae974cec423e11e4e119e7259a0b613f94e5c5de6acdf10bc5bd09b",
  "verification": {
    "reference": "docs/verification/Topology/PortFiber/Gluing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5d7ec45c340b68a3dd53535b091bfd6b630d2b8f8f0e478493b3b65c3282287`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def identitySheaf
    (P : GRWTSK.Topology.PortFiber.{u, v, w}) (A : P.Obj) :
    SheafCertificate (identityCover P A) where
  hasGluing := by
    intro sU sV h
    have hEq : sU = sV := (identity_matching_iff P A sU sV).mp h
    subst sV
    exact ⟨
      { global := sU
        restrictU := P.map_identity A sU
        restrictV := P.map_identity A sU }⟩
  separated := by
    intro x y hx _hy
    calc
      x = P.map (P.identity A) x := (P.map_identity A x).symm
      _ = P.map (P.identity A) y := hx
      _ = y := P.map_identity A y

end BinaryCover

end GRWTSK.Topology.PortFiber
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/PortFiber/Gluing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/PortFiber/Gluing.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28bc13d2297559ea515bb04d793587f55ca05ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
