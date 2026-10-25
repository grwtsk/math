# removeNth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7732c06d893d5449cdccf4473c8ffd32c1da6c1ea45c3f2358eb11b910fbef71",
  "kind": "def",
  "lexical_name": "removeNth",
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
  "slug": "removenth--0a34ea58c736bacafb02d478",
  "source": {
    "blob": "c6e3f915c87687bca4ee51bc70ce0d44f5f09270",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 655,
    "line": 643,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a34ea58c736bacafb02d4780fc9bb65319af87edd8051be3f98d3b4f7f1518d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7732c06d893d5449cdccf4473c8ffd32c1da6c1ea45c3f2358eb11b910fbef71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 643–655.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def removeNth : Ordnode α → ℕ → Ordnode α
  | nil, _ => nil
  | node _ l x r, i =>
    match Nat.psub' i (size l) with
    | none => balanceR (removeNth l i) x r
    | some 0 => glue l r
    | some (j + 1) => balanceL l x (removeNth r j)

/-- Auxiliary definition for `take`. (Can also be used in lieu of `take` if you know the
index is within the range of the data structure.)

    takeAux {a, b, c, d} 2 = {a, b}
    takeAux {a, b, c, d} 5 = {a, b, c, d} -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Ordnode/Variantb640d66a52633dc0852ccc182af20216e99b3e63ead5c1cb232b0aededa40bad.lean#L643).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6e3f915c87687bca4ee51bc70ce0d44f5f09270` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
