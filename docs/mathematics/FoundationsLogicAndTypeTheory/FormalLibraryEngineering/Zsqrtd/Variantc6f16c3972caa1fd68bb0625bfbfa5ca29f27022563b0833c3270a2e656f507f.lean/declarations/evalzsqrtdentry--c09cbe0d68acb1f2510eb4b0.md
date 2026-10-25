# evalZsqrtdEntry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e54e859a6714112cbb8e6247b65e43eb63b005b36e8018557808eb4554468dbb",
  "kind": "def",
  "lexical_name": "evalZsqrtdEntry",
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
  "slug": "evalzsqrtdentry--c09cbe0d68acb1f2510eb4b0",
  "source": {
    "blob": "50bfda7cab8d1d1b58e9ff7b94b8bb64437c9d46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zsqrtd/Variantc6f16c3972caa1fd68bb0625bfbfa5ca29f27022563b0833c3270a2e656f507f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c09cbe0d68acb1f2510eb4b00fc688632a0ea200a3fcbf9301c6d2bee5137b43",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zsqrtd/Variantc6f16c3972caa1fd68bb0625bfbfa5ca29f27022563b0833c3270a2e656f507f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e54e859a6714112cbb8e6247b65e43eb63b005b36e8018557808eb4554468dbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalZsqrtdEntry (d : ℤ) (e : Expr) : MetaM (ℤ√d) := do
  match_expr e with
  | Zsqrtd.mk _ a b => return ⟨← evalInt a, ← evalInt b⟩
  | Zsqrtd.sqrtd _ => return .sqrtd
  | _ => return ⟨← evalInt e, 0⟩

/-- The `ℤ√d` model, for `d` the value of the integer literal `dQ`: the elimination runs
on `ℤ√d` values with the ring's own arithmetic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zsqrtd/Variantc6f16c3972caa1fd68bb0625bfbfa5ca29f27022563b0833c3270a2e656f507f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zsqrtd/Variantc6f16c3972caa1fd68bb0625bfbfa5ca29f27022563b0833c3270a2e656f507f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50bfda7cab8d1d1b58e9ff7b94b8bb64437c9d46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
