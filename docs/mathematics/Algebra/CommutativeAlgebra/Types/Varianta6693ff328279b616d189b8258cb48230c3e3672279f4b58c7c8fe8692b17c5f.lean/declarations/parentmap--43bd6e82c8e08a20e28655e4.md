# ParentMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40365b9961ab46184f57a8c075de2d35c82a8be64fcaf2cc9940fb06e5b28166",
  "kind": "abbrev",
  "lexical_name": "ParentMap",
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
  "slug": "parentmap--43bd6e82c8e08a20e28655e4",
  "source": {
    "blob": "7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 747,
    "line": 728,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43bd6e82c8e08a20e28655e4a6eaebef60af846706206fdddd4e05afd42465e2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40365b9961ab46184f57a8c075de2d35c82a8be64fcaf2cc9940fb06e5b28166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 728–747.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
abbrev ParentMap := PHashMap ExprPtr ParentSet

/--
The E-matching module instantiates theorems using the `EMatchTheorem proof` and a (partial) assignment.
We want to avoid instantiating the same theorem with the same assignment more than once.
Therefore, we store the (pre-)instance information in set.
Recall that the proofs of activated theorems have been hash-consed.
The assignment contains internalized expressions, which have also been hash-consed.

**Note**: We used to use pointer equality to implement `PreInstanceSet`. However,
this low-level trick was incorrect in interactive mode because we add new
`EMatchTheorem` objects using `instantiate [...]`. For example, suppose we write
```
instantiate [thm_1]; instantiate [thm_1]
```
The `EMatchTheorem` object `thm_1` is created twice. Using pointer equality will
miss instances created using the two different objects. Recall we do not use
hash-consing on proof objects. If we hash-cons the proof objects, it would be ok
to use pointer equality.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Types/Varianta6693ff328279b616d189b8258cb48230c3e3672279f4b58c7c8fe8692b17c5f.lean#L728).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7611e81d5fd7ed4d854ff760fa7d113b4fc42c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
