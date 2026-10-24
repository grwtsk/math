# inferInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5d75b6a52769df00594fbb30c346bcec7a201b2c3edb147044f5a40cbeeb0db",
  "kind": "abbrev",
  "lexical_name": "inferInstance",
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
  "slug": "inferinstance--8d7cc126db8a9ee84e83ae3b",
  "source": {
    "blob": "a48bfcd7f182375f04a8fe3f19bf3e8424b106cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 193,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d7cc126db8a9ee84e83ae3b3dfc38b9ffcd51c825879476e637e077e55a9257",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5d75b6a52769df00594fbb30c346bcec7a201b2c3edb147044f5a40cbeeb0db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
abbrev inferInstance {α : Sort u} [i : α] : α := i

set_option checkBinderAnnotations false in
/--
`inferInstanceAs α` synthesizes an instance of type `α` and then adjusts it to conform to the
expected type `β`, which must be inferable from context.

Example:
```
def D := Nat
instance : Inhabited D := inferInstanceAs (Inhabited Nat)
```

The adjustment will make sure that when the resulting instance will not "leak" the RHS `Nat` when
reduced at transparency levels below `semireducible`, i.e. where `D` would not be unfolded either,
preventing "defeq abuse".

More specifically, given the "source type" (the argument) and "target type" (the expected type),
`inferInstanceAs` synthesizes an instance for the source type and then unfolds and rewraps its
components (fields, nested instances) as necessary to make them compatible with the target type. The
individual steps are represented by the following options, which all default to enabled and can be
disabled to help with porting:

* `backward.inferInstanceAs.wrap`: master switch for instance adjustment in both `inferInstanceAs`
  and the default deriving handler
* `backward.inferInstanceAs.wrap.reuseSubInstances`: reuse existing instances for the target type
  for sub-instance fields to avoid non-defeq instance diamonds
* `backward.inferInstanceAs.wrap.instances`: wrap non-reducible instances in auxiliary definitions
* `backward.inferInstanceAs.wrap.data`: wrap data fields in auxiliary definitions (proof fields are
  always wrapped)

If you just need to synthesize an instance without transporting between types, use `inferInstance`
instead, potentially with a type annotation for the expected type.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48bfcd7f182375f04a8fe3f19bf3e8424b106cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
