# rigidifiedElementOrbit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f47456c071d0ad0ad63aa446c64b0a3d3778dff2670848546d940e299c8aba0",
  "kind": "def",
  "lexical_name": "rigidifiedElementOrbit",
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
  "slug": "rigidifiedelementorbit--4fae4c33de1f9c7075c4853f",
  "source": {
    "blob": "1b12f9a56cb5afe1079aa6f65033c34b6d675080",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fae4c33de1f9c7075c4853f9dbaa5ab022a80280ddd367333e2e25fd1c79248",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f47456c071d0ad0ad63aa446c64b0a3d3778dff2670848546d940e299c8aba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rigidifiedElementOrbit
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) : Set hierarchy.Element :=
  {image |
    ∃ automorphism : RigidifiedAut certificate,
      automorphism element = image}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ExternalRigidifier/Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b12f9a56cb5afe1079aa6f65033c34b6d675080` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
