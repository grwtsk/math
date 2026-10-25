# OfScientific

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6601650a2ec75b44c4be20bf4bc6c23e2552ec2c69d39f7899551dbf89963885",
  "kind": "class",
  "lexical_name": "OfScientific",
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
  "slug": "ofscientific--72146baad3ade064501c81cc",
  "source": {
    "blob": "2c08fdab0091eb4023b595ab1f85e6741dd736e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8b9f08db8f0dbba61678784f84dfe39338c723cc2aa256c54c69d5e85309783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:72146baad3ade064501c81cc99fd7e20be7a6d7f6d57737e7138265bbb00f80d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8b9f08db8f0dbba61678784f84dfe39338c723cc2aa256c54c69d5e85309783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6601650a2ec75b44c4be20bf4bc6c23e2552ec2c69d39f7899551dbf89963885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class OfScientific (α : Type u) where
  /--
  Produces a value from the given mantissa, exponent sign, and decimal exponent. For the exponent
  sign, `true` indicates a negative exponent.

   Examples:
   - `1.23` is syntax for `OfScientific.ofScientific (nat_lit 123) true (nat_lit 2)`
   - `121e100` is syntax for `OfScientific.ofScientific (nat_lit 121) false (nat_lit 100)`

   Note the use of `nat_lit`; there is no wrapping `OfNat.ofNat` in the resulting term.
  -/
  ofScientific (mantissa : Nat) (exponentSign : Bool) (decimalExponent : Nat) : α
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8b9f08db8f0dbba61678784f84dfe39338c723cc2aa256c54c69d5e85309783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb8b9f08db8f0dbba61678784f84dfe39338c723cc2aa256c54c69d5e85309783.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c08fdab0091eb4023b595ab1f85e6741dd736e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
