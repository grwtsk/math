# AddMonoid.End.int_cast_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6ed12d6c99d08bb9f5ceea1ee33a0aedbc69a54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef60059b520de219c3294e94a9094ae158073b0931d2520a5e10ed59724a9c42.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b499bea4-308a-5b42-87e6-0ef532f8adf3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e0942c5-ac45-5e99-7cc6-29bb16a027ec",
  "kind": "theorem",
  "lexical_name": "AddMonoid.End.int_cast_def",
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
  "slug": "addmonoid-end-int-cast-def--b9cd65f4a6eb80ce8725344d",
  "source": {
    "blob": "b6ed12d6c99d08bb9f5ceea1ee33a0aedbc69a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 223,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantef60059b520de219c3294e94a9094ae158073b0931d2520a5e10ed59724a9c42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9cd65f4a6eb80ce8725344d8c9c7e30e7265a70b6c451567dce4cdba5528b93",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantef60059b520de219c3294e94a9094ae158073b0931d2520a5e10ed59724a9c42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e0942c5-ac45-5e99-7cc6-29bb16a027ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddMonoid.End.int_cast_def (z : ℤ) :
    (↑z : AddMonoid.End M) = DistribMulAction.toAddMonoidEnd ℤ M z :=
  rfl
#align add_monoid.End.int_cast_def AddMonoid.End.int_cast_def

/-- A structure containing most informations as in a module, except the fields `zero_smul`
and `smul_zero`. As these fields can be deduced from the other ones when `M` is an `AddCommGroup`,
this provides a way to construct a module structure by checking less properties, in
`Module.ofCore`. -/
-- Porting note: removed @[nolint has_nonempty_instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantef60059b520de219c3294e94a9094ae158073b0931d2520a5e10ed59724a9c42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantef60059b520de219c3294e94a9094ae158073b0931d2520a5e10ed59724a9c42.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ed12d6c99d08bb9f5ceea1ee33a0aedbc69a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
