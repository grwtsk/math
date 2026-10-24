# instIsAlgClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c02c800f44d62d218d85ee912cd15e9b8880a7163f3018401e8218f7b82b6834",
  "kind": "instance",
  "lexical_name": "instIsAlgClosed",
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
  "slug": "instisalgclosed--cc50b25989960c8d512ba539",
  "source": {
    "blob": "d837f136c007b2ef9824adf04814fc056e174aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 357,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc50b25989960c8d512ba539681d2c34a9ec6ef62f1a8931fdb32456b342f3d3",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c02c800f44d62d218d85ee912cd15e9b8880a7163f3018401e8218f7b82b6834`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsAlgClosed : IsAlgClosed (AlgebraicClosure k) :=
  IsAlgClosed.of_exists_root _ fun _ => exists_root k
#align algebraic_closure.is_alg_closed AlgebraicClosure.instIsAlgClosed

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d837f136c007b2ef9824adf04814fc056e174aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
