# forallTelescopeCompatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7671155a5c8cbc0ab15a8d53130af0f435687ae3b21047d634938923a2e0880d",
  "kind": "def",
  "lexical_name": "forallTelescopeCompatible",
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
  "slug": "foralltelescopecompatible--5a9f74de3a8a143d6f997dcd",
  "source": {
    "blob": "f926778b1727ed403f4bdf919418a34fe6945ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a9f74de3a8a143d6f997dcd94dfb37e58850eb422c9cb1749c72c5bed61cd62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7671155a5c8cbc0ab15a8d53130af0f435687ae3b21047d634938923a2e0880d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forallTelescopeCompatible [Monad m] [MonadControlT MetaM m] (type₁ type₂ : Expr) (numParams : Nat) (k : Array Expr → Expr → Expr → m α) : m α :=
  controlAt MetaM fun runInBase =>
    forallTelescopeCompatibleAux (fun xs type₁ type₂ => runInBase $ k xs type₁ type₂) numParams type₁ type₂ #[]

end Meta

namespace Elab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclUtil/Variantf16fd2e9568019f1ae2f6a73b4ece671ca19e4ef6a0fd1ccf14f7cd496213b3e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f926778b1727ed403f4bdf919418a34fe6945ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
