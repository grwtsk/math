# UInt8.ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83a6ec5549972ca51421a80d90347ccee536e98d0eb32daf6fc6905a382b5290",
  "kind": "def",
  "lexical_name": "UInt8.ofNat",
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
  "slug": "uint8-ofnat--d94be3665f713babbf59a56d",
  "source": {
    "blob": "11abbc2c3c4fe6ade835ad3ab6c241385f25f918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2489,
    "line": 2475,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d94be3665f713babbf59a56d7e39dcdf3486e7b504e6b4a18810fddc309a0ca4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83a6ec5549972ca51421a80d90347ccee536e98d0eb32daf6fc6905a382b5290`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2475–2489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UInt8.ofNat (n : @& Nat) : UInt8 := ⟨BitVec.ofNat 8 n⟩

set_option bootstrap.genMatcherCode false in
/--
Decides whether two 8-bit unsigned integers are equal. Usually accessed via the `DecidableEq UInt8`
instance.

This function is overridden at runtime with an efficient implementation.

Examples:
 * `UInt8.decEq 123 123 = .isTrue rfl`
 * `(if (6 : UInt8) = 7 then "yes" else "no") = "no"`
 * `show (7 : UInt8) = 7 by decide`
-/
@[extern "lean_uint8_dec_eq", implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean#L2475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11abbc2c3c4fe6ade835ad3ab6c241385f25f918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
