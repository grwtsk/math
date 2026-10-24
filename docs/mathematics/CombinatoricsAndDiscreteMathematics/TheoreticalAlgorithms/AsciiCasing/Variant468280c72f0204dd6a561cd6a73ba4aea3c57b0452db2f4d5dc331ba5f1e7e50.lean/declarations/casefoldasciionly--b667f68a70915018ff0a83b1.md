# caseFoldAsciiOnly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64575dd2602d29b65fd16320b78ed507487ffa0dd13354ec2525f7baa438fce8",
  "kind": "abbrev",
  "lexical_name": "caseFoldAsciiOnly",
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
  "slug": "casefoldasciionly--b667f68a70915018ff0a83b1",
  "source": {
    "blob": "ec16c190f358609b6949bee529026a98cd664832",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b667f68a70915018ff0a83b1a63546202a044d0895a40d196bbe8d8855aba94e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64575dd2602d29b65fd16320b78ed507487ffa0dd13354ec2525f7baa438fce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
abbrev caseFoldAsciiOnly := Char.toLower

/--
Bool-valued comparison of two `Char`s for *ASCII*-case insensitive equality.

```
#eval beqCaseInsensitiveAsciiOnly 'a' 'A' -- true
#eval beqCaseInsensitiveAsciiOnly 'a' 'a' -- true
#eval beqCaseInsensitiveAsciiOnly '$' '$' -- true
#eval beqCaseInsensitiveAsciiOnly 'a' 'b' -- false
#eval beqCaseInsensitiveAsciiOnly 'γ' 'Γ' -- false
#eval beqCaseInsensitiveAsciiOnly 'ä' 'Ä' -- false
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec16c190f358609b6949bee529026a98cd664832` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
