# simp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c2ce95efcd1ba67a011795f51bfee4ebe1d9d97cfdae30881e36c4df7e6fd47",
  "kind": "def",
  "lexical_name": "simp",
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
  "slug": "simp--a9b78dbd879ebc89dd1dbf36",
  "source": {
    "blob": "b04b38e1773eb51b55c53f219ed3fcbaa14d749b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9b78dbd879ebc89dd1dbf36eebec251dd17640b6eb744e8f2746d5b65d6ab22",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c2ce95efcd1ba67a011795f51bfee4ebe1d9d97cfdae30881e36c4df7e6fd47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def simp : RuleBuilder := λ input => do
  if let some decl ← elabGlobalRuleIdent? input.term then
    simpCore decl input.phase
  else
    checkElabRuleTermForSimp input.term (isSimpAll := true) -- TODO (isSimpAll := true) correct?
    return .localNormSimpRule {
      id := ← mkFreshId
      simpTheorem := input.term
    }

end Aesop.RuleBuilder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormSimp/Variantd10cbc2104999437682e32d075dc10229b277cc7cdf5f157ad5fc77cae4b1f94.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b04b38e1773eb51b55c53f219ed3fcbaa14d749b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
