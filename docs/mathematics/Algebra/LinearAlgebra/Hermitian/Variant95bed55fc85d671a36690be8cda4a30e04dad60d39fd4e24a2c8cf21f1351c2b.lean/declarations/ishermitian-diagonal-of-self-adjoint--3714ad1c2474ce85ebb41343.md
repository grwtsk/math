# isHermitian_diagonal_of_self_adjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20f7851d-8c46-b391-1c30-dc0df7753a1a",
  "kind": "theorem",
  "lexical_name": "isHermitian_diagonal_of_self_adjoint",
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
  "slug": "ishermitian-diagonal-of-self-adjoint--3714ad1c2474ce85ebb41343",
  "source": {
    "blob": "d4bb233827d8193d97553501617e0e0402a53377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3714ad1c2474ce85ebb413431c48d854fc91eaf3a0b6525c01a1cc1eb521aba3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20f7851d-8c46-b391-1c30-dc0df7753a1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHermitian_diagonal_of_self_adjoint [DecidableEq n] (v : n → α) (h : IsSelfAdjoint v) :
    (diagonal v).IsHermitian :=
  (-- TODO: add a `pi.has_trivial_star` instance and remove the `funext`
        diagonal_conjTranspose v).trans <| congr_arg _ h

/-- A diagonal matrix is hermitian if each diagonal entry is self-adjoint -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4bb233827d8193d97553501617e0e0402a53377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
