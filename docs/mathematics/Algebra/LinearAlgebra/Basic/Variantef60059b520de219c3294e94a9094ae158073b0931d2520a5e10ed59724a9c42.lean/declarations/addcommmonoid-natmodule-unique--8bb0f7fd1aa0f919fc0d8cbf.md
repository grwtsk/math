# AddCommMonoid.natModule.unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12c7d9b16804f7252a37f8f5b63d52fff818d9bc0266b4623b83896b006d2e65",
  "kind": "def",
  "lexical_name": "AddCommMonoid.natModule.unique",
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
  "slug": "addcommmonoid-natmodule-unique--8bb0f7fd1aa0f919fc0d8cbf",
  "source": {
    "blob": "b6ed12d6c99d08bb9f5ceea1ee33a0aedbc69a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 408,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantef60059b520de219c3294e94a9094ae158073b0931d2520a5e10ed59724a9c42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bb0f7fd1aa0f919fc0d8cbf050bbe457c3d9644aa9ce715006a38ddd111df58",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantef60059b520de219c3294e94a9094ae158073b0931d2520a5e10ed59724a9c42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12c7d9b16804f7252a37f8f5b63d52fff818d9bc0266b4623b83896b006d2e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddCommMonoid.natModule.unique : Unique (Module ℕ M) where
  default := by infer_instance
  uniq P := (Module.ext' P _) fun n => by convert nat_smul_eq_nsmul P n
#align add_comm_monoid.nat_module.unique AddCommMonoid.natModule.unique

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantef60059b520de219c3294e94a9094ae158073b0931d2520a5e10ed59724a9c42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantef60059b520de219c3294e94a9094ae158073b0931d2520a5e10ed59724a9c42.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ed12d6c99d08bb9f5ceea1ee33a0aedbc69a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
