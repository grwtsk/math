# toDigitsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03bb9043b716b603ff5b5fd10da50426619e3d6e3f394f49205277a6200dc2f2",
  "kind": "def",
  "lexical_name": "toDigitsCore",
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
  "slug": "todigitscore--d8049dfc835defa99e6e4bac",
  "source": {
    "blob": "5b3572ee5f1950d4f98b34fdd44d31d6ed23fd68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 207,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8049dfc835defa99e6e4baccf237ca11710ec3b8dc1685e984ed4473c03832d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03bb9043b716b603ff5b5fd10da50426619e3d6e3f394f49205277a6200dc2f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toDigitsCore (base : Nat) : Nat → Nat → List Char → List Char
  | 0,      _, ds => ds
  | fuel+1, n, ds =>
    let d  := digitChar <| n % base;
    let n' := n / base;
    if n' = 0 then d::ds
    else toDigitsCore base fuel n' (d::ds)

/--
Returns the decimal representation of a natural number as a list of digit characters in the given
base. If the base is greater than `16` then `'*'` is returned for digits greater than `0xf`.

Examples:
* `Nat.toDigits 10 0xff = ['2', '5', '5']`
* `Nat.toDigits 8 0xc = ['1', '4']`
* `Nat.toDigits 16 0xcafe = ['c', 'a', 'f', 'e']`
* `Nat.toDigits 80 200 = ['2', '*']`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3572ee5f1950d4f98b34fdd44d31d6ed23fd68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
