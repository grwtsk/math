# mkNatLookupTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7597ce165ee173741fb388604b423f04816da98d87d4899942832fcba3d83e04",
  "kind": "def",
  "lexical_name": "mkNatLookupTable",
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
  "slug": "mknatlookuptable--d91cbd488846aaa91d1c4bcc",
  "source": {
    "blob": "0a7b51da35a69a43826f50431f5b678ca9d019fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatTable/Variant377abb7c9a590d5f9871c2ae331fec24fe9b551cebef3679790f3689f425a98b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d91cbd488846aaa91d1c4bcc2c69c70a31bde759c1efd0ccc86c3bbb83e4c630",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatTable/Variant377abb7c9a590d5f9871c2ae331fec24fe9b551cebef3679790f3689f425a98b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7597ce165ee173741fb388604b423f04816da98d87d4899942832fcba3d83e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkNatLookupTable (i : Expr) (type : Expr) (es : Array Expr) : MetaM Expr := do
  if h : es.size = 0 then
    panic! "mkNatLookupTable: expected non-empty array"
  else
    let u ← getLevel type
    let rec go (start stop : Nat) (hstart : start < stop := by omega) (hstop : stop ≤ es.size := by omega) : MetaM Expr := do
      if h : start + 1 = stop then
        return es[start]
      else
        let mid := (start + stop) / 2
        let low ← go start mid
        let high ← go mid stop
        return mkApp4 (mkConst ``cond [u]) type (mkApp2 (mkConst ``Nat.ble) i (mkRawNatLit (mid-1))) low high
    go 0 es.size

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatTable/Variant377abb7c9a590d5f9871c2ae331fec24fe9b551cebef3679790f3689f425a98b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatTable/Variant377abb7c9a590d5f9871c2ae331fec24fe9b551cebef3679790f3689f425a98b.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7b51da35a69a43826f50431f5b678ca9d019fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
