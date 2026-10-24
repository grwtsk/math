# mkLiteralQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a380cc53dd1b4bf7141b65c244339c17aae932112b59e9b761a403009b115cda",
  "kind": "def",
  "lexical_name": "mkLiteralQ",
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
  "slug": "mkliteralq--08ca65fbe055e48c7494fe1e",
  "source": {
    "blob": "fd5190fcd5011308f55facf7c9fe04707d5ced8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08ca65fbe055e48c7494fe1e240eb301a791a0c4582f86bfb6cd8a43a101a851",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a380cc53dd1b4bf7141b65c244339c17aae932112b59e9b761a403009b115cda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkLiteralQ {u : Level} {α : Q(Type u)} {m n : Nat} (elems : Matrix (Fin m) (Fin n) Q($α)) :
    Q(Matrix (Fin $m) (Fin $n) $α) :=
  let elems := PiFin.mkLiteralQ (α := q(Fin $n → $α)) fun i => PiFin.mkLiteralQ fun j => elems i j
  q(Matrix.of $elems)

/-- Matrices can be reflected whenever their entries can. We insert a `Matrix.of` to
prevent immediate decay to a function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd5190fcd5011308f55facf7c9fe04707d5ced8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
