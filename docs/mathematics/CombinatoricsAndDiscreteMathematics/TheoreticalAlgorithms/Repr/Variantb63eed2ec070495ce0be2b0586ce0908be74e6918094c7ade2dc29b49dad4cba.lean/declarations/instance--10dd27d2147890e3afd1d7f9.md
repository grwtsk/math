# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a3f747469abba6a367b9392ad9f2e52cced7be5dc2152ad9d583e0e16377d2c",
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
  "slug": "instance--10dd27d2147890e3afd1d7f9",
  "source": {
    "blob": "5b3572ee5f1950d4f98b34fdd44d31d6ed23fd68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 167,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10dd27d2147890e3afd1d7f9e3a64ae43d8e3dccc4203cbe0b516640dbe2005a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a3f747469abba6a367b9392ad9f2e52cced7be5dc2152ad9d583e0e16377d2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {p : α → Prop} [Repr α] : Repr (Subtype p) where
  reprPrec s prec := reprPrec s.val prec

namespace Nat

/-
We have pure functions for calculating the decimal representation of a `Nat` (`toDigits`), but also
a fast variant that handles small numbers (`USize`) via C code (`lean_string_of_usize`).
-/

/--
Returns a single digit representation of `n`, which is assumed to be in a base less than or equal to
`16`. Returns `'*'` if `n > 15`.

Examples:
 * `Nat.digitChar 5 = '5'`
 * `Nat.digitChar 12 = 'c'`
 * `Nat.digitChar 15 = 'f'`
 * `Nat.digitChar 16 = '*'`
 * `Nat.digitChar 85 = '*'`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Repr/Variantb63eed2ec070495ce0be2b0586ce0908be74e6918094c7ade2dc29b49dad4cba.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3572ee5f1950d4f98b34fdd44d31d6ed23fd68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
