# extensionFormalTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bd7da593c985cb8b6e9d8ddeecf9f7959f7e2e4d621074e65541a0a20beb527",
  "kind": "def",
  "lexical_name": "extensionFormalTheorem",
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
  "slug": "extensionformaltheorem--9c223243c1c3ce8bdf756494",
  "source": {
    "blob": "232133cfc3e264e84627132035d0ac0fa1ec8a2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variant72b0521542399219fd494d41ece3e49245c4825374aadcaa589e2fecd69fbb86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c223243c1c3ce8bdf7564940dc22df383bb9fd0872013c34d03b3c5fad5b33a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variant72b0521542399219fd494d41ece3e49245c4825374aadcaa589e2fecd69fbb86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bd7da593c985cb8b6e9d8ddeecf9f7959f7e2e4d621074e65541a0a20beb527`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def extensionFormalTheorem
    (V : Type u) (G : Graph V) : Think.Kernel.Theorems.FormalTheorem :=
  { name := "rado-finite-extension-realizer"
    source := "finite Rado extension-property schema"
    claim := extensionStatement V G
    status := Think.Kernel.Theorems.ProofStatus.proofComplete
    checked := FWR.Checked.proved (by
      intro h U W hdisjoint
      exact extension_property_produces_realizer G h U W hdisjoint) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variant72b0521542399219fd494d41ece3e49245c4825374aadcaa589e2fecd69fbb86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M4b65726e656c2f5468656f72656d732f5261646f46696e697465457874656e73696f6e2e6c65616/Variant72b0521542399219fd494d41ece3e49245c4825374aadcaa589e2fecd69fbb86.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `232133cfc3e264e84627132035d0ac0fa1ec8a2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
