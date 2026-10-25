# abstractNestedProofs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a09849d3b7a16f51d2688ba15d612f0b69a11c6d1dc57d3b7ad0905a2ffa3428",
  "kind": "def",
  "lexical_name": "abstractNestedProofs",
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
  "slug": "abstractnestedproofs--a5552285f994e5552c46eb27",
  "source": {
    "blob": "b931c2cf0519ac38d0303e79d69e16f34e296c5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 111,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5552285f994e5552c46eb271fc93c3896f3d0f987f0885285cb27cb96160d43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a09849d3b7a16f51d2688ba15d612f0b69a11c6d1dc57d3b7ad0905a2ffa3428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abstractNestedProofs (e : Expr) (cache := true) : MetaM Expr := do
  if (← isProof e) then
    -- `e` is a proof itself. So, we don't abstract nested proofs
    return e
  else
    AbstractNestedProofs.visit e |>.run { cache } |>.run

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AbstractNestedProofs/Variant0c15c160c399770e90c209bfd23944855dd888811ab7cf4aa0a3e81ec7bf92df.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b931c2cf0519ac38d0303e79d69e16f34e296c5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
