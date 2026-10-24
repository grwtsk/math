# DivisionSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:abf7470732188e912b21631a661894342190826b04fb5d732bfb97d3866835bb",
  "kind": "class",
  "lexical_name": "DivisionSemiring",
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
  "slug": "divisionsemiring--bf0a8c7b504652a28c7228e1",
  "source": {
    "blob": "f1f876412861f820974d6c5989350a3460a436d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf0a8c7b504652a28c7228e1e944d56b5f6778184c7a37becb676305c8cb55d7",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:abf7470732188e912b21631a661894342190826b04fb5d732bfb97d3866835bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class DivisionSemiring (α : Type*) extends Semiring α, GroupWithZero α
#align division_semiring DivisionSemiring

/-- A `DivisionRing` is a `Ring` with multiplicative inverses for nonzero elements.

An instance of `DivisionRing K` includes maps `ratCast : ℚ → K` and `qsmul : ℚ → K → K`.
If the division ring has positive characteristic p, we define `ratCast (1 / p) = 1 / 0 = 0`
for consistency with our division by zero convention.
The fields `ratCast` and `qsmul` are needed to implement the
`algebraRat [DivisionRing K] : Algebra ℚ K` instance, since we need to control the specific
definitions for some special cases of `K` (in particular `K = ℚ` itself).
See also Note [forgetful inheritance].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantd0f95430e0e2dd086c0d7c0788c8587685dedc3b266a1b9b8351a81eabea8c83.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f876412861f820974d6c5989350a3460a436d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
