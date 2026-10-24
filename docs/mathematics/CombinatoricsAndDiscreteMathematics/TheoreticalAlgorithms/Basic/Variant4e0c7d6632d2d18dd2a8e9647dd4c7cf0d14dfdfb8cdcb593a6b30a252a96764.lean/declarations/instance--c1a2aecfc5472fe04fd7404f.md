# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f95fe6f12a75ffd5365eb82719869b0243ab16f2ad76ce5c4fb0b3976c63c5f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c1a2aecfc5472fe04fd7404f",
  "source": {
    "blob": "310cea7dfdad9f9bd709caf781450a2e16770c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 399,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1a2aecfc5472fe04fd7404fee77cc864450cfe958707d70ec39329e0690c4bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f95fe6f12a75ffd5365eb82719869b0243ab16f2ad76ce5c4fb0b3976c63c5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private instance : MonadPrettyFormat (StateM State) where
  -- We avoid a structure instance update, and write these functions using pattern matching because of issue #316
  pushOutput s       := modify fun ⟨out, col⟩ => ⟨String.Internal.append out s, col + (String.Internal.length s)⟩
  pushNewline indent := modify fun ⟨out, _⟩ => ⟨String.Internal.append out (String.Internal.pushn "\n" ' ' indent), indent⟩
  currColumn         := return (← get).column
  startTag _         := return ()
  endTags _          := return ()

/--
Renders a `Format` to a string.
* `width`: the total width
* `indent`: the initial indentation to use for wrapped lines
  (subsequent wrapping may increase the indentation)
* `column`: begin the first line wrap `column` characters earlier than usual
  (this is useful when the output String will be printed starting at `column`)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4e0c7d6632d2d18dd2a8e9647dd4c7cf0d14dfdfb8cdcb593a6b30a252a96764.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `310cea7dfdad9f9bd709caf781450a2e16770c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
