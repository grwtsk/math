# outParam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c93f4e8678930bc666ea9280a04a607e88425fb2cc5573088e07af0c157f18b",
  "kind": "def",
  "lexical_name": "outParam",
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
  "slug": "outparam--4a65ccd1bc7bfec8faede1e7",
  "source": {
    "blob": "a48bfcd7f182375f04a8fe3f19bf3e8424b106cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 732,
    "line": 710,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a65ccd1bc7bfec8faede1e75e1eae7e43859dd1d048d76dacd9aeab8d75d2f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c93f4e8678930bc666ea9280a04a607e88425fb2cc5573088e07af0c157f18b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 710–732.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[reducible] def outParam (α : Sort u) : Sort u := α

/--
Gadget for marking semi output parameters in type classes.

Semi-output parameters influence the order in which arguments to type class
instances are processed.  Lean determines an order where all non-(semi-)output
parameters to the instance argument have to be figured out before attempting to
synthesize an argument (that is, they do not contain assignable metavariables
created during TC synthesis). This rules out instances such as `[Mul β] : Add
α` (because `β` could be anything). Marking a parameter as semi-output is a
promise that instances of the type class will always fill in a value for that
parameter.

For example, the `Coe` class is defined as:
```
class Coe (α : semiOutParam (Sort u)) (β : Sort v)
```
This means that all `Coe` instances should provide a concrete value for `α`
(i.e., not an assignable metavariable). An instance like `Coe Nat Int` or `Coe
α (Option α)` is fine, but `Coe α Nat` is not since it does not provide a value
for `α`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Prelude/Variantd6386b5e736e1406a3de0fececd3c966c1196c0fbf82df5c7c629de494262040.lean#L710).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a48bfcd7f182375f04a8fe3f19bf3e8424b106cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
