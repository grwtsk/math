# Linkage.weakAny

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f59679b1a97c400e89db1eca20cceaf5bd1f0e0c81bd577e16a50782d0599ed8",
  "kind": "def",
  "lexical_name": "Linkage.weakAny",
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
  "slug": "linkage-weakany--4a41c0ec5cbd08d07209907c",
  "source": {
    "blob": "3c2300c36c30b7fe46ed45afb546b88954358856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 405,
    "path": "GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a41c0ec5cbd08d07209907c25b25e456284652ea8c33efba5de65a19f3a845f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f59679b1a97c400e89db1eca20cceaf5bd1f0e0c81bd577e16a50782d0599ed8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Linkage.weakAny : Linkage := { val := 5 }
/-- Same, but only replaced by something equivalent -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LLVMBindings/Variant36d5d4c29c1a5130701070081766fcfd6eb5e1952a85dea95614d776df6e932e.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c2300c36c30b7fe46ed45afb546b88954358856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
