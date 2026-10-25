# WangZahlNodeAdmissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d053dd39c171b255abcf50bbf06091733521fea42ce08e9ad58c7ce4fb95ae0a",
  "kind": "def",
  "lexical_name": "WangZahlNodeAdmissible",
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
  "slug": "wangzahlnodeadmissible--b1839cf8c02ee93bc543366d",
  "source": {
    "blob": "09de5e9ce6d34973388edba82ea29b804e2d0e72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlCorrelationSquare/Variant4b89116712cf46402c5434e0de0c5a7a112943cab1740066605d3dc5fa5005a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1839cf8c02ee93bc543366d3c7757e8031ad7823b63c570cb6d62c41d449921",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlCorrelationSquare/Variant4b89116712cf46402c5434e0de0c5a7a112943cab1740066605d3dc5fa5005a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d053dd39c171b255abcf50bbf06091733521fea42ce08e9ad58c7ce4fb95ae0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WangZahlNodeAdmissible
    {N q : ℕ} {B : TypeIIShellFactorBlock N q}
    (plan : HyperbolicSurgeryPlan N q B) (node : plan.tree.Node) : Prop :=
  ∃ certificate :
      UnsignedWangZahlDiffuseCertificate plan.packetGeometry.PacketAtom,
    certificate.family.tubes = plan.nodePacketAtoms node

/-- Signed square-function estimate required after the unsigned Wang--Zahl
volume theorem and packet-energy argument have been combined with a genuine
coefficient-correlation theorem.

This is intentionally not implied by `WangZahlNodeAdmissible` in this module.
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlCorrelationSquare/Variant4b89116712cf46402c5434e0de0c5a7a112943cab1740066605d3dc5fa5005a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WangZahlCorrelationSquare/Variant4b89116712cf46402c5434e0de0c5a7a112943cab1740066605d3dc5fa5005a3.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09de5e9ce6d34973388edba82ea29b804e2d0e72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
