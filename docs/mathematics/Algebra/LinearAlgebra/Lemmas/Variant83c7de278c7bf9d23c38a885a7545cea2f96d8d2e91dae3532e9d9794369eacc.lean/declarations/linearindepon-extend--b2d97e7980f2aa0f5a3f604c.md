# LinearIndepOn.extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e88e6e180c358ed9efc5a9b5c37e7464bfb508955435de2ec419abea2abdb58a",
  "kind": "def",
  "lexical_name": "LinearIndepOn.extend",
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
  "slug": "linearindepon-extend--b2d97e7980f2aa0f5a3f604c",
  "source": {
    "blob": "d4b7c89d186030cf8b9d7e23f901e9ce0bd0fee4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 694,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2d97e7980f2aa0f5a3f604cb9dbb2287b5b513c805270c16e404cc8c581802b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e88e6e180c358ed9efc5a9b5c37e7464bfb508955435de2ec419abea2abdb58a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def LinearIndepOn.extend (hs : LinearIndepOn K id s) (hst : s ⊆ t) : Set V :=
  Classical.choose (exists_linearIndepOn_id_extension hs hst)

@[deprecated (since := "2025-02-15")] alias LinearIndependent.extend := LinearIndepOn.extend

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4b7c89d186030cf8b9d7e23f901e9ce0bd0fee4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
