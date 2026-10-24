# RingHom.adjoinAlgebraMapEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff1c6f65bdffe14b377e2f3fb2dc13b476f2c42efb1e57545acb0fd6003b93db",
  "kind": "def",
  "lexical_name": "RingHom.adjoinAlgebraMapEquiv",
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
  "slug": "ringhom-adjoinalgebramapequiv--2da312698118d924bc7de59f",
  "source": {
    "blob": "0faa8ec64c7e962130bf8f28daf8fffd071f400b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 55,
    "path": "GRWTSK/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2da312698118d924bc7de59fdceaf3ac5f885ab6db0b26ca9b00708606a477e3",
  "verification": {
    "reference": "docs/verification/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff1c6f65bdffe14b377e2f3fb2dc13b476f2c42efb1e57545acb0fd6003b93db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def RingHom.adjoinAlgebraMapEquiv [FaithfulSMul B C] :
    A[b] ≃+* A[(algebraMap B C) b] := by
  apply RingEquiv.ofBijective (RingHom.adjoinAlgebraMap b)
     ((Function.bijective_iff_existsUnique (adjoinAlgebraMap b)).mpr (fun y ↦ ?_))
  induction y using Algebra.adjoin_singleton_induction with | f p =>
  use ⟨p.aeval b, by simp⟩
  aesop (add norm [Polynomial.aeval_algebraMap_apply, Subtype.ext_iff])

end Algebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Singleton/Variant3dc0c393031b54ad0cd46119387ed77de538ebcc2271b3bc492cd82802bbf797.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0faa8ec64c7e962130bf8f28daf8fffd071f400b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
