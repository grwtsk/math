# weekYear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ba52c6f0960ea956757bd60d97102c271f501d0bdeb8e5e03eef34a663a3da3",
  "kind": "def",
  "lexical_name": "weekYear",
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
  "slug": "weekyear--515eb532b51b866e0b4a7ccc",
  "source": {
    "blob": "416bb910378e16805ca01b7bcc0f09a44f34f787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 505,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDateTime/Varianta483dc8bcf755f666bdc5357af4afbbccc0f006d461ee67d6c635c32046576d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:515eb532b51b866e0b4a7ccce0c6e21aa34df31e3c06cc3c2406715f7359bdf4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDateTime/Varianta483dc8bcf755f666bdc5357af4afbbccc0f006d461ee67d6c635c32046576d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ba52c6f0960ea956757bd60d97102c271f501d0bdeb8e5e03eef34a663a3da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def weekYear (date : PlainDateTime) (firstDay : Weekday := .monday) (minDays : Bounded.LE 0 6 := Bounded.LE.mk 4 (by decide)) : Year.Offset :=
  date.date.weekYear firstDay minDays

/--
Returns the aligned week of the month for a `PlainDateTime`. Weeks are fixed 7-day slots
starting from day 1: days 1–7 are week 1, days 8–14 are week 2, etc.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDateTime/Varianta483dc8bcf755f666bdc5357af4afbbccc0f006d461ee67d6c635c32046576d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDateTime/Varianta483dc8bcf755f666bdc5357af4afbbccc0f006d461ee67d6c635c32046576d7.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `416bb910378e16805ca01b7bcc0f09a44f34f787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
