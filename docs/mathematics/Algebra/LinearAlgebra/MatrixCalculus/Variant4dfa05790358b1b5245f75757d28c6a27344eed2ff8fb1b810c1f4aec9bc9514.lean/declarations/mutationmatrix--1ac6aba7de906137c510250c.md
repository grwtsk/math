# mutationMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3072823c13db55185ae3f1436a6a9c64e3830a5a7579a85e3ff39f8420adccd",
  "kind": "def",
  "lexical_name": "mutationMatrix",
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
  "slug": "mutationmatrix--1ac6aba7de906137c510250c",
  "source": {
    "blob": "7ae0374ab0eb8bbcfc7f692d3be25e12254c82ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 15,
    "path": "GRWTSK/Algebra/LinearAlgebra/MatrixCalculus/Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ac6aba7de906137c510250c75cb0b85aa383b04d89dc4c591ea22c4c5bff2a8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixCalculus/Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3072823c13db55185ae3f1436a6a9c64e3830a5a7579a85e3ff39f8420adccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mutationMatrix {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ) (i : Fin n) :
    Matrix (Fin n) (Fin n) ℤ :=
  Matrix.updateRow 1 i (fun k => if k = i then -1 else A i k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixCalculus/Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MatrixCalculus/Variant4dfa05790358b1b5245f75757d28c6a27344eed2ff8fb1b810c1f4aec9bc9514.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ae0374ab0eb8bbcfc7f692d3be25e12254c82ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
