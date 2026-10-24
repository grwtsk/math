# String.toRawSubstring'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81ac41102bebe18cfafa50f01f6bfe5ca01cded4fbb12d2bb37a656af02a425e",
  "kind": "def",
  "lexical_name": "String.toRawSubstring'",
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
  "slug": "string-torawsubstring--7eeac637b83c25fb08c3231b",
  "source": {
    "blob": "11abbc2c3c4fe6ade835ad3ab6c241385f25f918",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3688,
    "line": 3662,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7eeac637b83c25fb08c3231b3ac8e2fa5a621eef255548db56bcfc1ca9cb017e",
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

Occurrence: `declaration:81ac41102bebe18cfafa50f01f6bfe5ca01cded4fbb12d2bb37a656af02a425e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3662–3688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def String.toRawSubstring' (s : String) : Substring.Raw :=
  s.toRawSubstring

/--
This function will cast a value of type `α` to type `β`, and is a no-op in the
compiler. This function is **extremely dangerous** because there is no guarantee
that types `α` and `β` have the same data representation, and this can lead to
memory unsafety. It is also logically unsound, since you could just cast
`True` to `False`. For all those reasons this function is marked as `unsafe`.

It is implemented by lifting both `α` and `β` into a common universe, and then
using `cast (lcProof : ULift (PLift α) = ULift (PLift β))` to actually perform
the cast. All these operations are no-ops in the compiler.

Using this function correctly requires some knowledge of the data representation
of the source and target types. Some general classes of casts which are safe in
the current runtime:

* `Array α` to `Array β` where `α` and `β` have compatible representations,
  or more generally for other inductive types.
* `Quot α r` and `α`.
* `@Subtype α p` and `α`, or generally any structure containing only one
  non-`Prop` field of type `α`.
* Casting `α` to/from `NonScalar` when `α` is a boxed generic type
  (i.e. a function that accepts an arbitrary type `α` and is not specialized to
  a scalar type like `UInt8`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variant56de5780adc4358372fa9cfac270a70f2d03fd4f213a373aea4365483b31a544.lean#L3662).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11abbc2c3c4fe6ade835ad3ab6c241385f25f918` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
