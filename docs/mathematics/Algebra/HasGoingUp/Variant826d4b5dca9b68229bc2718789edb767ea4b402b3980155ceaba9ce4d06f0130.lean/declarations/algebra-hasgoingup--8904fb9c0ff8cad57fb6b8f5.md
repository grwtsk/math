# Algebra.HasGoingUp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a4947c107292cf0876936071e62027b6236f978d3d93cd52aeb9dbb51a239d5",
  "kind": "class",
  "lexical_name": "Algebra.HasGoingUp",
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
  "slug": "algebra-hasgoingup--8904fb9c0ff8cad57fb6b8f5",
  "source": {
    "blob": "ba6d3048c4e8007f84ee08b1958155419e4ed2e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8904fb9c0ff8cad57fb6b8f55dc994f4459301c9b8c00b9a2a92b164f75a19e6",
  "verification": {
    "reference": "docs/verification/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a4947c107292cf0876936071e62027b6236f978d3d93cd52aeb9dbb51a239d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Algebra.HasGoingUp
    (R S : Type*) [CommRing R] [CommRing S] [Algebra R S] : Prop where
  exists_ideal_ge_liesOver_of_lt {q : Ideal R} [q.IsPrime] (P : Ideal S) [P.IsPrime] :
    P.under R < q → ∃ Q, P ≤ Q ∧ Q.IsPrime ∧ Q.LiesOver q

variable {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]

namespace Ideal

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HasGoingUp/Variant826d4b5dca9b68229bc2718789edb767ea4b402b3980155ceaba9ce4d06f0130.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba6d3048c4e8007f84ee08b1958155419e4ed2e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
