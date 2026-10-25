# suggestConvTactic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34f4ff88e0b3bc4adedb1be7f1af1480f8c8a01b78390a254013fb2754ac51c3",
  "kind": "def",
  "lexical_name": "suggestConvTactic",
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
  "slug": "suggestconvtactic--5b253d5a379b704fc6459083",
  "source": {
    "blob": "54c9b797ff124c8665b7ec5a1bbc43a9feca52c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1471,
    "line": 1454,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b253d5a379b704fc64590836874afe019d2e4a4596e1c2c278a79cb18cfb140",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34f4ff88e0b3bc4adedb1be7f1af1480f8c8a01b78390a254013fb2754ac51c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1454–1471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def suggestConvTactic (code : StrLit) : DocM (Array CodeSuggestion) := do
  try
    _ ← getConvTactic code
    return #[.mk ``conv none none]
  catch
  | _ =>
    try
      let p := whitespace >> categoryParserFn `conv
      _ ← parseStrLit p code
      return #[.mk ``conv none none]
    catch
    | _ => return #[]

open Lean.Parser.Term in
/--
Suggests the `attr` role, if applicable.
-/
@[builtin_doc_code_suggestions]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtin/Variant0f74ed8e04215f947f09dab444c002918c3fadd424c098a39df7265a830a11f3.lean#L1454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54c9b797ff124c8665b7ec5a1bbc43a9feca52c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
