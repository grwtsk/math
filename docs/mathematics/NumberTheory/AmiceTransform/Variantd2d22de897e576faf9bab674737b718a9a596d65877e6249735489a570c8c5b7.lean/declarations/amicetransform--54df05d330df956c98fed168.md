# amiceTransform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e1b83bffc7eaabe7193bf8339cc8d915769cf491a827943ed81b842c79fff25",
  "kind": "def",
  "lexical_name": "amiceTransform",
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
  "slug": "amicetransform--54df05d330df956c98fed168",
  "source": {
    "blob": "3a5faaabb7b804788d21dbfeeb5da9ab6af5faf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54df05d330df956c98fed16850b06290aa67de33b71e0a044fe8194df4a80a1d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2e1b83bffc7eaabe7193bf8339cc8d915769cf491a827943ed81b842c79fff25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def amiceTransform : D(ℤ_[p], R) →ₗ[R] R⟦X⟧ where
  toFun μ := .mk fun n ↦ μ ((mahler n : C(ℤ_[p], ℤ_[p])) • (1 : C(ℤ_[p], R)))
  map_add' μ ν := by ext; simp
  map_smul' r μ := by ext; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AmiceTransform/Variantd2d22de897e576faf9bab674737b718a9a596d65877e6249735489a570c8c5b7.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a5faaabb7b804788d21dbfeeb5da9ab6af5faf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
