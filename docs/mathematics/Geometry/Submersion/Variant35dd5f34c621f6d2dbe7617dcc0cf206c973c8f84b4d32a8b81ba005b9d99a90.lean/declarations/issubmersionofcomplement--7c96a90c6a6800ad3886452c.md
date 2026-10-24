# IsSubmersionOfComplement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a51b44e2209af62552bd5948daf47db68ef3a945d7f11b7fab60ed6afb4b9860",
  "kind": "def",
  "lexical_name": "IsSubmersionOfComplement",
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
  "slug": "issubmersionofcomplement--7c96a90c6a6800ad3886452c",
  "source": {
    "blob": "714cde96f90589ebb53c342029320c15a2ed3c38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 538,
    "path": "GRWTSK/Geometry/Submersion/Variant35dd5f34c621f6d2dbe7617dcc0cf206c973c8f84b4d32a8b81ba005b9d99a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c96a90c6a6800ad3886452c9a914a410c9454b5438df0dbcf9e31db8bf8ac12",
  "verification": {
    "reference": "docs/verification/Geometry/Submersion/Variant35dd5f34c621f6d2dbe7617dcc0cf206c973c8f84b4d32a8b81ba005b9d99a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a51b44e2209af62552bd5948daf47db68ef3a945d7f11b7fab60ed6afb4b9860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSubmersionOfComplement (f : M → N) : Prop := ∀ x, IsSubmersionAtOfComplement F I J n f x

variable (I J n) in
/-- `f : M → N` is a `C^n` submersion if around each point `x ∈ M`,
there are charts `φ` and `ψ` of `M` and `N` around `x` and `f x`, respectively
such that in these charts, `f` looks like `(u, v) ↦ u`.

Implicit in this definition is an abstract choice `F` of a complement of `E` in `E'`:
being a submersion includes a choice of linear isomorphism between `E` and `E'' × F`, which is where
the choice of `F` enters. If you need stronger control over the complement `F`,
use `IsSubmersionOfComplement` instead.

Note that our global choice of complement is a bit stronger than asking `f` to be a submersion at
each `x ∈ M` w.r.t. to potentially varying complements: see `isSubmersionAt` for details.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Submersion/Variant35dd5f34c621f6d2dbe7617dcc0cf206c973c8f84b4d32a8b81ba005b9d99a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Submersion/Variant35dd5f34c621f6d2dbe7617dcc0cf206c973c8f84b4d32a8b81ba005b9d99a90.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `714cde96f90589ebb53c342029320c15a2ed3c38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
