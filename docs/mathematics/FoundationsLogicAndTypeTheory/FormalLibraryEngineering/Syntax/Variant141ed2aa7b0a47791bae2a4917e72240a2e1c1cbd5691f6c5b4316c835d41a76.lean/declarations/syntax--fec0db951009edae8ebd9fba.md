# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ab74bce1ad1e7598db05ae998230f3ecc17bc2f003ce46f866859a18e05ff90",
  "kind": "syntax",
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
  "slug": "syntax--fec0db951009edae8ebd9fba",
  "source": {
    "blob": "6dc55b8beb2e7114ac1e2c745df80b9d1b5678c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant141ed2aa7b0a47791bae2a4917e72240a2e1c1cbd5691f6c5b4316c835d41a76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fec0db951009edae8ebd9fbafc481d7d432c4d4bcff9c4cbb8194635a5a5beb7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant141ed2aa7b0a47791bae2a4917e72240a2e1c1cbd5691f6c5b4316c835d41a76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ab74bce1ad1e7598db05ae998230f3ecc17bc2f003ce46f866859a18e05ff90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
scoped syntax (name:=display_math) "\\displaymath" code : inline

/--
Block-level elements, such as paragraphs, headers, and lists.

Conventions:
 * When there's concrete syntax that can be written as Lean atoms, do so (code blocks are ` ``` `,
   directives `:::`)
 * When Verso's syntax requires a newline, use `|` because `"\n"` is not a valid Lean token
 * Directive bodies are in `{` and `}` to avoid quotation parsing issues with `:::` ... `:::`
 * If there's no concrete syntax per se, such as for paragraphs or lists, use a name with brackets
   and braces
 * Use parentheses around required literals, such as the starting number of an ordered list
 * Use square brackets around sequences of literals
 * Use curly braces around blocks or lists items (because names and arguments a la roles are always
   newline-separated for directives and code)
-/
declare_syntax_cat block

/-- Items from both ordered and unordered lists -/
declare_syntax_cat list_item
/-- A list item -/
@[builtin_doc]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant141ed2aa7b0a47791bae2a4917e72240a2e1c1cbd5691f6c5b4316c835d41a76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Syntax/Variant141ed2aa7b0a47791bae2a4917e72240a2e1c1cbd5691f6c5b4316c835d41a76.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc55b8beb2e7114ac1e2c745df80b9d1b5678c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
