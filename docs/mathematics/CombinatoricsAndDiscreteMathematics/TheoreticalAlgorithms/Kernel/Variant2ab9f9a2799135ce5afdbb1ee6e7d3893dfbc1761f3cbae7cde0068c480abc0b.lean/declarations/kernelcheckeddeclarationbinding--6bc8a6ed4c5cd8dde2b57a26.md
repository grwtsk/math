# KernelCheckedDeclarationBinding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46e9aa38cc987fbdc67f1b3885e35ec4aa7fca5fc201cc46ce3d157e654b0716",
  "kind": "structure",
  "lexical_name": "KernelCheckedDeclarationBinding",
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
  "slug": "kernelcheckeddeclarationbinding--6bc8a6ed4c5cd8dde2b57a26",
  "source": {
    "blob": "47e2e4acefc804eb14a6a1eb5be13fea09036606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 164,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bc8a6ed4c5cd8dde2b57a26f48a4d7b47d17f0a4d064b81a14f3bc0db981729",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46e9aa38cc987fbdc67f1b3885e35ec4aa7fca5fc201cc46ce3d157e654b0716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure KernelCheckedDeclarationBinding
    (environment : FrozenKernelEnvironment)
    (statement : Prop)
    (declaration : KernelDeclarationIdentity) where
  private mk ::
  witness : TheoremWitness statement
  audit : KernelAuditEnvelope environment declaration

/--
The common theorem certificate.  Its private constructor prevents callers
from replacing the declaration or certificate address around an unaudited
payload.  Operational extraction may retain values of this type, while public
consumers receive only inspection and theorem-elimination interfaces.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kernel/Variant2ab9f9a2799135ce5afdbb1ee6e7d3893dfbc1761f3cbae7cde0068c480abc0b.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47e2e4acefc804eb14a6a1eb5be13fea09036606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
